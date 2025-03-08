/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { MyProfileController } from './my-profile.controller';
import { MyProfileService } from './my-profile.service';
import { UserProfileService } from '../user-profile/user-profile.service';
import { User } from '../entities/user.entity';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import {
  GetMyProfileResponse,
  UpdateResponse,
} from '../proto/bst/v1/my_profile_service';

describe('MyProfileController', () => {
  let controller: MyProfileController;
  let myProfileService: MyProfileService;

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'hashedpassword',
    externalId: null,
    externalService: null,
    iconUrl: 'https://example.com/icon.jpg',
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockGetMyProfileResponse: GetMyProfileResponse = {
    profile: {
      user: {
        id: mockUser.id,
        name: mockUser.name,
        icon: mockUser.iconUrl || '',
      },
      introduction: 'Test Bio',
      area: {
        name: 'Test Area',
        prefectureId: 1,
      },
      favorite: {
        genres: [],
        artists: [],
        parts: [],
      },
      badges: [],
      createdAt: new Date(),
    },
    email: mockUser.email,
  };

  const mockUpdateResponse: UpdateResponse = {
    profile: {
      user: {
        id: mockUser.id,
        name: mockUser.name,
        icon: mockUser.iconUrl || '',
      },
      introduction: 'Test Bio',
      area: {
        name: 'Test Area',
        prefectureId: 1,
      },
      favorite: {
        genres: [],
        artists: [],
        parts: [],
      },
      badges: [],
      createdAt: new Date(),
    },
    success: true,
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MyProfileController],
      providers: [
        {
          provide: MyProfileService,
          useValue: {
            getMyProfile: jest.fn(),
            updateIntroduction: jest.fn(),
            updateUserName: jest.fn(),
            updateUserIcon: jest.fn(),
            updateUserGenres: jest.fn(),
            updateUserArtists: jest.fn(),
            updateUserParts: jest.fn(),
            updateUserArea: jest.fn(),
          },
        },
        {
          provide: UserProfileService,
          useValue: {
            getUserProfile: jest.fn(),
          },
        },
        {
          provide: JwtService,
          useValue: {
            sign: jest.fn(),
            verify: jest.fn(),
          },
        },
        {
          provide: getRepositoryToken(User),
          useValue: {
            findOne: jest.fn(),
          },
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<MyProfileController>(MyProfileController);
    myProfileService = module.get<MyProfileService>(MyProfileService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('getMyProfile', () => {
    it('should return user profile successfully', async () => {
      jest
        .spyOn(myProfileService, 'getMyProfile')
        .mockResolvedValue(mockGetMyProfileResponse);

      const result = await controller.getMyProfile(mockUser);

      expect(result).toEqual(mockGetMyProfileResponse);
      expect(myProfileService.getMyProfile).toHaveBeenCalledWith(mockUser.id);
    });
  });

  describe('updateIntroduction', () => {
    it('should update introduction successfully', async () => {
      const updateRequest = { introduction: 'New Bio' };
      jest
        .spyOn(myProfileService, 'updateIntroduction')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateIntroduction(
        updateRequest,
        mockUser,
      );

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateIntroduction).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.introduction,
      );
    });
  });

  describe('updateUserName', () => {
    it('should update user name successfully', async () => {
      const updateRequest = { name: 'New Name' };
      jest
        .spyOn(myProfileService, 'updateUserName')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserName(updateRequest, mockUser);

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserName).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.name,
      );
    });
  });

  describe('updateUserIcon', () => {
    it('should update user icon successfully', async () => {
      const updateRequest = { icon: 'new-icon-url' };
      jest
        .spyOn(myProfileService, 'updateUserIcon')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserIcon(updateRequest, mockUser);

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserIcon).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.icon,
      );
    });
  });

  describe('updateUserGenres', () => {
    it('should update user genres successfully', async () => {
      const updateRequest = { genreIds: [1, 2, 3] };
      jest
        .spyOn(myProfileService, 'updateUserGenres')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserGenres(updateRequest, mockUser);

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserGenres).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.genreIds,
      );
    });
  });

  describe('updateUserArtists', () => {
    it('should update user artists successfully', async () => {
      const updateRequest = { artistIds: [1, 2, 3] };
      jest
        .spyOn(myProfileService, 'updateUserArtists')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserArtists(
        updateRequest,
        mockUser,
      );

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserArtists).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.artistIds,
      );
    });
  });

  describe('updateUserParts', () => {
    it('should update user parts successfully', async () => {
      const updateRequest = { partIds: [1, 2, 3] };
      jest
        .spyOn(myProfileService, 'updateUserParts')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserParts(updateRequest, mockUser);

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserParts).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.partIds,
      );
    });
  });

  describe('updateUserArea', () => {
    it('should update user area successfully', async () => {
      const updateRequest = { prefectureId: 1 };
      jest
        .spyOn(myProfileService, 'updateUserArea')
        .mockResolvedValue(mockUpdateResponse);

      const result = await controller.updateUserArea(updateRequest, mockUser);

      expect(result).toEqual(mockUpdateResponse);
      expect(myProfileService.updateUserArea).toHaveBeenCalledWith(
        mockUser.id,
        updateRequest.prefectureId,
      );
    });
  });
});
