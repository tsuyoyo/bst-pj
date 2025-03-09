import { Test, TestingModule } from '@nestjs/testing';
import { UserProfileController } from './user-profile.controller';
import { UserProfileService } from './user-profile.service';
import { GetUserProfileResponse } from '../proto/bst/v1/user_profile_service';

describe('UserProfileController', () => {
  let controller: UserProfileController;
  let service: UserProfileService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [UserProfileController],
      providers: [
        {
          provide: UserProfileService,
          useValue: {
            getUserProfile: jest.fn(),
          },
        },
      ],
    }).compile();

    controller = module.get<UserProfileController>(UserProfileController);
    service = module.get<UserProfileService>(UserProfileService);
  });

  it('should return user profile', async () => {
    const userId = 1;
    const result: GetUserProfileResponse = {
      profile: {
        user: { id: userId, name: 'Test User', icon: '' },
        areas: [{ name: 'Test Area', prefectureId: 1 }],
        favorite: {
          genres: [],
          artists: [],
          parts: [],
        },
        introduction: '',
        createdAt: new Date(),
        badges: [],
      },
    };
    jest.spyOn(service, 'getUserProfile').mockResolvedValue(result);

    expect(await controller.getUserProfile(userId)).toBe(result);
  });
});
