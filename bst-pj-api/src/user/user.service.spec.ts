import { UserService } from './user.service';
import { User } from '../entities/user.entity';
import { Repository } from 'typeorm';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Test, TestingModule } from '@nestjs/testing';
import { NotFoundException } from '@nestjs/common';

describe('UserService', () => {
  let service: UserService;
  let repository: Repository<User>;

  const mockUser = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'hashedpassword',
    externalId: null,
    externalService: null,
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserService,
        {
          provide: getRepositoryToken(User),
          useValue: {
            create: jest.fn().mockReturnValue(mockUser),
            save: jest.fn().mockResolvedValue(mockUser),
            findOne: jest.fn().mockResolvedValue(mockUser),
            delete: jest.fn().mockResolvedValue({ affected: 1 }),
          },
        },
      ],
    }).compile();

    service = module.get<UserService>(UserService);
    repository = module.get<Repository<User>>(getRepositoryToken(User));
  });

  it('should create a user and return a ProtoUser', async () => {
    const createUserDto = {
      name: 'Test User',
      email: 'test@example.com',
      password: 'password123',
    };

    const result = await service.create(createUserDto);
    expect(result).toBeDefined();
    expect(result.id).toBe(mockUser.id);
    expect(result.name).toBe(mockUser.name);
  });

  it('should update a user name and return a ProtoUser', async () => {
    const newName = 'Updated Name';
    const result = await service.updateUserName(1, newName);
    expect(result).toBeDefined();
    expect(result.name).toBe(mockUser.name);
  });

  it('should throw NotFoundException when updating a non-existing user name', async () => {
    jest.spyOn(repository, 'findOne').mockResolvedValue(null);
    await expect(service.updateUserName(999, 'New Name')).rejects.toThrow(
      NotFoundException,
    );
  });

  it('should update a user icon and return a ProtoUser', async () => {
    const newIconUrl = 'https://example.com/icon.jpg';
    const result = await service.updateUserIcon(1, newIconUrl);
    expect(result).toBeDefined();
    expect(result.icon).toBe(mockUser.iconUrl);
  });

  it('should throw NotFoundException when updating a non-existing user icon', async () => {
    jest.spyOn(repository, 'findOne').mockResolvedValue(null);
    await expect(
      service.updateUserIcon(999, 'https://example.com/icon.jpg'),
    ).rejects.toThrow(NotFoundException);
  });

  it('should delete a user', async () => {
    const result = await service.deleteUser(1);
    expect(result).toBeDefined();
    expect(result.success).toBe(true);
  });
});
