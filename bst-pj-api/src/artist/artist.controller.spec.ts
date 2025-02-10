import { Test, TestingModule } from '@nestjs/testing';
import { ArtistController } from './artist.controller';
import { ArtistService } from './artist.service';
import { CreateArtistDto } from './dto/create-artist.dto';
import { UpdateArtistDto } from './dto/update-artist.dto';
import { User } from '../entities/user.entity';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('ArtistController', () => {
  let controller: ArtistController;

  const mockArtistService = {
    createArtist: jest.fn(),
    listArtists: jest.fn(),
    getArtist: jest.fn(),
    updateArtist: jest.fn(),
    deleteArtist: jest.fn(),
  };

  const mockJwtService = {
    verifyAsync: jest.fn(),
  };

  const mockUserRepository = {
    findOne: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ArtistController],
      providers: [
        {
          provide: ArtistService,
          useValue: mockArtistService,
        },
        {
          provide: JwtService,
          useValue: mockJwtService,
        },
        {
          provide: getRepositoryToken(User),
          useValue: mockUserRepository,
        },
      ],
    }).compile();

    controller = module.get<ArtistController>(ArtistController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createArtist', () => {
    it('should create an artist', async () => {
      const createArtistDto: CreateArtistDto = {
        name: 'Test Artist',
        description: 'Test Description',
        website: 'http://test.com',
        genreIds: [1, 2],
      };
      const user = { id: 1, email: 'test@example.com' } as User;
      const expectedResponse = {
        artist: {
          id: 1,
          name: 'Test Artist',
          website: 'http://test.com',
          updatedUserId: 1,
        },
      };

      mockArtistService.createArtist.mockResolvedValue(expectedResponse);

      const result = await controller.createArtist(createArtistDto, user);

      expect(result).toEqual(expectedResponse);
      expect(mockArtistService.createArtist).toHaveBeenCalledWith(
        createArtistDto.name,
        createArtistDto.website,
        user.id,
        createArtistDto.genreIds,
      );
    });
  });

  describe('listArtists', () => {
    it('should return a list of artists', async () => {
      const expectedResponse = {
        artists: [
          {
            id: 1,
            name: 'Artist 1',
            website: 'http://artist1.com',
            updatedUserId: 1,
          },
        ],
        nextPageToken: '',
        totalSize: 1,
      };

      mockArtistService.listArtists.mockResolvedValue(expectedResponse);

      const result = await controller.listArtists();

      expect(result).toEqual(expectedResponse);
      expect(mockArtistService.listArtists).toHaveBeenCalled();
    });
  });

  describe('getArtist', () => {
    it('should return an artist by id', async () => {
      const artistId = '1';
      const expectedResponse = {
        artist: {
          id: 1,
          name: 'Artist 1',
          website: 'http://artist1.com',
          updatedUserId: 1,
        },
      };

      mockArtistService.getArtist.mockResolvedValue(expectedResponse);

      const result = await controller.getArtist(artistId);

      expect(result).toEqual(expectedResponse);
      expect(mockArtistService.getArtist).toHaveBeenCalledWith(
        parseInt(artistId, 10),
      );
    });
  });

  describe('updateArtist', () => {
    it('should update an artist', async () => {
      const artistId = '1';
      const updateArtistDto: UpdateArtistDto = {
        name: 'Updated Artist',
        description: 'Updated Description',
        website: 'http://updated.com',
        genreIds: [2, 3],
      };
      const user = { id: 1, email: 'test@example.com' } as User;
      const expectedResponse = {
        artist: {
          id: 1,
          name: 'Updated Artist',
          website: 'http://updated.com',
          updatedUserId: 1,
        },
      };

      mockArtistService.updateArtist.mockResolvedValue(expectedResponse);

      const result = await controller.updateArtist(
        artistId,
        updateArtistDto,
        user,
      );

      expect(result).toEqual(expectedResponse);
      expect(mockArtistService.updateArtist).toHaveBeenCalledWith(
        parseInt(artistId, 10),
        user.id,
        updateArtistDto,
      );
    });
  });

  describe('deleteArtist', () => {
    it('should delete an artist', async () => {
      const artistId = '1';
      const user = { id: 1, email: 'test@example.com' } as User;
      const expectedResponse = { success: true };

      mockArtistService.deleteArtist.mockResolvedValue(expectedResponse);

      const result = await controller.deleteArtist(artistId, user);

      expect(result).toEqual(expectedResponse);
      expect(mockArtistService.deleteArtist).toHaveBeenCalledWith(
        parseInt(artistId, 10),
      );
    });
  });
});
