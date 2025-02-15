import { Test, TestingModule } from '@nestjs/testing';
import { UserPartService } from './user-part.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { UserPart } from '../entities/user-part.entity';

describe('UserPartService', () => {
  let service: UserPartService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserPartService,
        {
          provide: getRepositoryToken(UserPart),
          useValue: {
            find: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<UserPartService>(UserPartService);
  });

  it('should return user preferred parts', async () => {
    const userId = 1;
    const mockUserParts: UserPart[] = [
      {
        id: 1,
        userId: 1,
        partId: 1,
        createdAt: new Date(),
        user: {
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
        },
        part: {
          id: 1,
          name: 'Part 1',
          description: 'Description 1',
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
      {
        id: 2,
        userId: 1,
        partId: 2,
        createdAt: new Date(),
        user: {
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
        },
        part: {
          id: 2,
          name: 'Part 2',
          description: 'Description 2',
          createdAt: new Date(),
          updatedAt: new Date(),
          updatedUserId: 1,
        },
      },
    ];

    jest
      .spyOn(service['userPartRepository'], 'find')
      .mockResolvedValue(mockUserParts);

    const result = await service.getUserPreferredParts(userId);
    expect(result).toEqual(
      mockUserParts.map((userPart) => ({
        id: userPart.part.id,
        name: userPart.part.name,
        description: userPart.part.description,
      })),
    );
  });
});
