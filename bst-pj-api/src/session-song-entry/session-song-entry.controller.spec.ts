import { Test, TestingModule } from '@nestjs/testing';
import { SessionSongEntryController } from './session-song-entry.controller';
import { SessionSongEntryService } from './session-song-entry.service';
import { User } from '../entities/user.entity';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

describe('SessionSongEntryController', () => {
  let controller: SessionSongEntryController;

  const mockUser: User = {
    id: 1,
    name: 'testuser',
    email: 'test@example.com',
    password: 'password',
    externalId: null,
    externalService: null,
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockSessionSongEntryService = {
    addSongEntry: jest.fn(),
    updateSongEntry: jest.fn(),
    deleteSongEntry: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SessionSongEntryController],
      providers: [
        {
          provide: SessionSongEntryService,
          useValue: mockSessionSongEntryService,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<SessionSongEntryController>(
      SessionSongEntryController,
    );
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('addSongEntry', () => {
    it('should add a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const dto = {
        sessionPartId: 1,
        comment: 'Test comment',
      };
      const mockResponse = {
        entry: {
          id: 1,
          comment: 'Test comment',
          part: {
            id: 1,
            name: 'Guitar',
          },
          user: mockUser,
        },
      };

      mockSessionSongEntryService.addSongEntry.mockResolvedValue(mockResponse);

      const result = await controller.addSongEntry(
        sessionId,
        songId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(mockSessionSongEntryService.addSongEntry).toHaveBeenCalledWith(
        sessionId,
        songId,
        dto,
        mockUser,
      );
    });
  });

  describe('updateSongEntry', () => {
    it('should update a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;
      const dto = {
        comment: 'Updated comment',
      };
      const mockResponse = {
        entry: {
          id: 1,
          comment: 'Updated comment',
          part: {
            id: 1,
            name: 'Guitar',
          },
          user: mockUser,
        },
      };

      mockSessionSongEntryService.updateSongEntry.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.updateSongEntry(
        sessionId,
        songId,
        entryId,
        dto,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(mockSessionSongEntryService.updateSongEntry).toHaveBeenCalledWith(
        sessionId,
        songId,
        entryId,
        dto,
        mockUser,
      );
    });
  });

  describe('deleteSongEntry', () => {
    it('should delete a song entry', async () => {
      const sessionId = 1;
      const songId = 1;
      const entryId = 1;
      const mockResponse = { success: true };

      mockSessionSongEntryService.deleteSongEntry.mockResolvedValue(
        mockResponse,
      );

      const result = await controller.deleteSongEntry(
        sessionId,
        songId,
        entryId,
        mockUser,
      );

      expect(result).toEqual(mockResponse);
      expect(mockSessionSongEntryService.deleteSongEntry).toHaveBeenCalledWith(
        sessionId,
        songId,
        entryId,
        mockUser,
      );
    });
  });
});
