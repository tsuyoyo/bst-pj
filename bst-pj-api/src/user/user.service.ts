import { User } from '../entities/user.entity';
import { User as ProtoUser } from '../proto/bst/v1/user';
import { Repository } from 'typeorm';
import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DeleteUserResponse } from '../proto/bst/v1/user_service';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  public mapUserToProto(user: User): ProtoUser {
    return {
      id: user.id,
      name: user.name,
      icon: user.iconUrl || '',
    };
  }

  async getUser(userId: number): Promise<ProtoUser> {
    const user = await this.userRepository.findOne({ where: { id: userId } });
    if (!user) {
      throw new NotFoundException(`User with ID ${userId} not found`);
    }
    return this.mapUserToProto(user);
  }

  async create(createUserDto: {
    name: string;
    email: string;
    password: string;
  }): Promise<ProtoUser> {
    const user = this.userRepository.create(createUserDto);
    const savedUser = await this.userRepository.save(user);
    return this.mapUserToProto(savedUser);
  }

  async updateUserName(userId: number, name: string): Promise<ProtoUser> {
    const user = await this.userRepository.findOne({ where: { id: userId } });
    if (!user) {
      throw new NotFoundException(`User with ID ${userId} not found`);
    }

    user.name = name;
    const updatedUser = await this.userRepository.save(user);
    return this.mapUserToProto(updatedUser);
  }

  async updateUserIcon(userId: number, iconUrl: string): Promise<ProtoUser> {
    const user = await this.userRepository.findOne({ where: { id: userId } });
    if (!user) {
      throw new NotFoundException(`User with ID ${userId} not found`);
    }

    user.iconUrl = iconUrl;
    const updatedUser = await this.userRepository.save(user);
    return this.mapUserToProto(updatedUser);
  }

  async deleteUser(userId: number): Promise<DeleteUserResponse> {
    const result = await this.userRepository.delete(userId);
    return {
      success: result.affected === 1,
    };
  }
}
