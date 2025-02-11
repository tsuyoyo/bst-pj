import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { ReactionType } from '../entities/reaction-type.entity';
import { Reaction } from '../entities/reaction.entity';
import { User } from '../entities/user.entity';
import {
  CreateReactionTypeRequest,
  CreateReactionTypeResponse,
  DeleteReactionTypeResponse,
  GetReactionTypeResponse,
  ListReactionTypesRequest,
  ListReactionTypesResponse,
  UpdateReactionTypeRequest,
  UpdateReactionTypeResponse,
  CreateReactionRequest,
  CreateReactionResponse,
  GetReactionResponse,
  ListReactionsRequest,
  ListReactionsResponse,
  DeleteReactionResponse,
} from '../proto/bst/v1/reaction_service';
import { ReactionType as ProtoReactionType } from '../proto/bst/v1/communication';
import { Reaction as ProtoReaction } from '../proto/bst/v1/communication';

@Injectable()
export class ReactionService {
  constructor(
    @InjectRepository(ReactionType)
    private readonly reactionTypeRepository: Repository<ReactionType>,
    @InjectRepository(Reaction)
    private readonly reactionRepository: Repository<Reaction>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  private mapReactionTypeToProto = (
    reactionType: ReactionType,
  ): ProtoReactionType => {
    return {
      id: reactionType.id,
      name: reactionType.name,
      description: reactionType.description,
      iconUrl: reactionType.iconUrl,
      updatedUserId: reactionType.updatedUserId,
      createdAt: reactionType.createdAt,
      updatedAt: reactionType.updatedAt,
    };
  };

  private mapReactionToProto = async (
    reaction: Reaction,
  ): Promise<ProtoReaction> => {
    const user = await this.userRepository.findOne({
      where: { id: reaction.userId },
    });

    if (!user) {
      throw new NotFoundException(`User with ID ${reaction.userId} not found`);
    }

    return {
      id: reaction.id,
      user: {
        id: user.id,
        name: user.name,
        icon: user.iconUrl,
      },
      reactionTypeId: reaction.reactionType.id,
      updatedUserId: reaction.userId,
      createdAt: reaction.createdAt,
      updatedAt: reaction.updatedAt,
    };
  };

  async createReactionType(
    request: CreateReactionTypeRequest,
    userId: number,
  ): Promise<CreateReactionTypeResponse> {
    const reactionType = this.reactionTypeRepository.create({
      name: request.name,
      description: request.description,
      iconUrl: request.iconUrl,
      updatedUserId: userId,
    });

    const savedReactionType =
      await this.reactionTypeRepository.save(reactionType);

    return {
      reactionType: this.mapReactionTypeToProto(savedReactionType),
    };
  }

  async listReactionTypes(
    request: ListReactionTypesRequest,
  ): Promise<ListReactionTypesResponse> {
    const [reactionTypes, totalCount] =
      await this.reactionTypeRepository.findAndCount({
        take: request.pageSize,
        skip: request.pageToken ? parseInt(request.pageToken, 10) : 0,
      });

    const nextPageToken =
      reactionTypes.length === request.pageSize
        ? (request.pageToken ? parseInt(request.pageToken, 10) : 0) +
          request.pageSize
        : '';

    return {
      reactionTypes: reactionTypes.map((rt) => this.mapReactionTypeToProto(rt)),
      nextPageToken: nextPageToken.toString(),
      totalSize: totalCount,
    };
  }

  async getReactionType(id: number): Promise<GetReactionTypeResponse> {
    const reactionType = await this.reactionTypeRepository.findOne({
      where: { id },
    });

    if (!reactionType) {
      throw new NotFoundException(`ReactionType with ID ${id} not found`);
    }

    return {
      reactionType: this.mapReactionTypeToProto(reactionType),
    };
  }

  async updateReactionType(
    request: UpdateReactionTypeRequest,
    userId: number,
  ): Promise<UpdateReactionTypeResponse> {
    const reactionType = await this.reactionTypeRepository.findOne({
      where: { id: request.reactionTypeId },
    });

    if (!reactionType) {
      throw new NotFoundException(
        `ReactionType with ID ${request.reactionTypeId} not found`,
      );
    }

    if (request.name !== undefined) {
      reactionType.name = request.name;
    }
    if (request.description !== undefined) {
      reactionType.description = request.description;
    }
    if (request.iconUrl !== undefined) {
      reactionType.iconUrl = request.iconUrl;
    }
    reactionType.updatedUserId = userId;

    const updatedReactionType =
      await this.reactionTypeRepository.save(reactionType);

    return {
      reactionType: this.mapReactionTypeToProto(updatedReactionType),
    };
  }

  async deleteReactionType(id: number): Promise<DeleteReactionTypeResponse> {
    const result = await this.reactionTypeRepository.delete(id);
    return { success: result.affected ? result.affected > 0 : false };
  }

  async createReaction(
    request: CreateReactionRequest,
    userId: number,
  ): Promise<CreateReactionResponse> {
    const reactionType = await this.reactionTypeRepository.findOne({
      where: { id: request.reactionTypeId },
    });

    if (!reactionType) {
      throw new NotFoundException(
        `ReactionType with ID ${request.reactionTypeId} not found`,
      );
    }

    const reaction = this.reactionRepository.create({
      targetId: request.targetId,
      userId: userId,
      reactionTypeId: request.reactionTypeId,
    });

    const savedReaction = await this.reactionRepository.save(reaction);
    const reactionWithType = await this.reactionRepository.findOne({
      where: { id: savedReaction.id },
      relations: ['reactionType'],
    });

    if (!reactionWithType) {
      throw new NotFoundException(`Failed to fetch created reaction`);
    }

    return {
      reaction: await this.mapReactionToProto(reactionWithType),
    };
  }

  async listReactions(
    request: ListReactionsRequest,
  ): Promise<ListReactionsResponse> {
    const [reactions, totalCount] = await this.reactionRepository.findAndCount({
      where: { targetId: request.targetId },
      relations: ['reactionType'],
      take: request.pageSize,
      skip: request.pageToken ? parseInt(request.pageToken, 10) : 0,
    });

    const nextPageToken =
      reactions.length === request.pageSize
        ? (request.pageToken ? parseInt(request.pageToken, 10) : 0) +
          request.pageSize
        : '';

    return {
      reactions: await Promise.all(reactions.map(this.mapReactionToProto)),
      nextPageToken: nextPageToken.toString(),
      totalSize: totalCount,
    };
  }

  async getReaction(id: number): Promise<GetReactionResponse> {
    const reaction = await this.reactionRepository.findOne({
      where: { id },
      relations: ['reactionType'],
    });

    if (!reaction) {
      throw new NotFoundException(`Reaction with ID ${id} not found`);
    }

    return {
      reaction: await this.mapReactionToProto(reaction),
    };
  }

  async deleteReaction(id: number): Promise<DeleteReactionResponse> {
    const result = await this.reactionRepository.delete(id);
    return { success: result.affected ? result.affected > 0 : false };
  }
}
