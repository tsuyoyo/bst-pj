import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserPart } from '../entities/user-part.entity';
import { Part as ProtoPart } from '../proto/bst/v1/content';

@Injectable()
export class UserPartService {
  constructor(
    @InjectRepository(UserPart)
    private readonly userPartRepository: Repository<UserPart>,
  ) {}

  async getUserPreferredParts(userId: number): Promise<ProtoPart[]> {
    const userParts = await this.userPartRepository.find({
      where: { userId },
      relations: ['part'],
    });

    return userParts.map((userPart) => ({
      id: userPart.part.id,
      name: userPart.part.name,
      description: userPart.part.description,
    }));
  }
}
