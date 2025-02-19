import { Test, TestingModule } from '@nestjs/testing';
import { PartyService } from './party.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Party } from '../entities/party.entity';
import { PartyParticipant } from '../entities/party-participant.entity';
import { SessionParticipant } from '../entities/session-participant.entity';
import { LocationService } from '../location/location.service';
import { UserService } from '../user/user.service';
import { CreatePartyDto } from './dto/create-party.dto';
import { UpdatePartyDto } from './dto/update-party.dto';
import { User } from '../entities/user.entity';
import { NotFoundException } from '@nestjs/common';
import { PartyParticipantStatus } from '../entities/types/party-participant-status.enum';
import { PartyParticipantRole } from '../entities/types/party-participant-role.enum';

describe('PartyService', () => {
  let partyService: PartyService;

  const mockUser: User = {
    id: 1,
    externalId: null,
    externalService: null,
    name: 'testuser',
    email: 'test@example.com',
    password: 'password',
    iconUrl: null,
    profilePictureUrl: null,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockPartyRepository = {
    create: jest.fn(),
    save: jest.fn(),
    findOne: jest.fn(),
    update: jest.fn(),
    delete: jest.fn(),
  };

  const mockPartyParticipantRepository = {
    create: jest.fn(),
    save: jest.fn(),
    find: jest.fn(),
    delete: jest.fn(),
    findOne: jest.fn(),
  };

  const mockSessionParticipantRepository = {
    findOne: jest.fn().mockResolvedValue({
      id: 1,
      user: mockUser,
      sessionId: 1,
    }),
  };

  const mockLocationService = {
    getLocation: jest.fn(),
  };

  const mockUserService = {
    getUser: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        PartyService,
        {
          provide: getRepositoryToken(Party),
          useValue: mockPartyRepository,
        },
        {
          provide: getRepositoryToken(PartyParticipant),
          useValue: mockPartyParticipantRepository,
        },
        {
          provide: getRepositoryToken(SessionParticipant),
          useValue: mockSessionParticipantRepository,
        },
        {
          provide: LocationService,
          useValue: mockLocationService,
        },
        {
          provide: UserService,
          useValue: mockUserService,
        },
      ],
    }).compile();

    partyService = module.get<PartyService>(PartyService);
  });

  it('should be defined', () => {
    expect(partyService).toBeDefined();
  });

  describe('createParty', () => {
    it('should create a party', async () => {
      const sessionId = 1;
      const sessionParticipant = { id: 1, user: mockUser };
      const createPartyDto: CreatePartyDto = {
        locationId: 1,
        fee: 1000,
        startAt: new Date(),
        endAt: new Date(),
      };

      const mockParty = {
        id: 1,
        sessionId,
        ...createPartyDto,
        participants: [
          {
            id: 1,
            partyId: 1,
            sessionParticipantId: 1,
            role: PartyParticipantRole.HOST,
            status: PartyParticipantStatus.CONFIRMED,
          },
        ],
      };

      mockPartyRepository.findOne.mockResolvedValue(mockParty);
      mockPartyRepository.create.mockReturnValue(mockParty);
      mockPartyRepository.save.mockResolvedValue(mockParty);
      mockPartyParticipantRepository.create.mockReturnValue({
        id: 1,
        partyId: 1,
        sessionParticipantId: 1,
        role: PartyParticipantRole.HOST,
        status: PartyParticipantStatus.CONFIRMED,
      });
      mockPartyParticipantRepository.save.mockResolvedValue({ success: true });
      mockSessionParticipantRepository.findOne.mockResolvedValue(
        sessionParticipant,
      );
      mockUserService.getUser.mockResolvedValue(mockUser);
      mockLocationService.getLocation.mockResolvedValue({
        id: 1,
        name: 'Test Location',
        additionalInfo: '',
        mapUrl: '',
      });

      const mockPartyParticipants = [
        {
          id: 1,
          partyId: 1,
          sessionParticipantId: 1,
          role: PartyParticipantRole.HOST,
        },
      ];

      mockPartyParticipantRepository.find.mockResolvedValue(
        mockPartyParticipants,
      );

      const result = await partyService.createParty(
        sessionId,
        createPartyDto,
        mockUser,
      );
      expect(result).toBeDefined();
    });
  });

  describe('getParty', () => {
    it('should return a party', async () => {
      const sessionId = 1;
      const mockParty = {
        id: 1,
        locationId: 1,
        fee: 1000,
        startAt: new Date(),
        endAt: new Date(),
        participants: [],
      };

      mockPartyRepository.findOne.mockResolvedValue(mockParty);
      mockLocationService.getLocation.mockResolvedValue({
        id: 1,
        name: 'Test Location',
        additionalInfo: '',
        mapUrl: '',
      });
      mockPartyParticipantRepository.find.mockResolvedValue([]);

      const result = await partyService.getParty(sessionId);
      expect(result).toBeDefined();
    });
  });

  describe('updateParty', () => {
    it('should update a party', async () => {
      const sessionId = 1;
      const updatePartyDto: UpdatePartyDto = {
        locationId: 2,
        fee: 2000,
        startAt: new Date(),
        endAt: new Date(),
      };
      const party = {
        id: 1,
        sessionId: sessionId,
        locationId: 1,
        fee: 1000,
        startAt: new Date(),
        endAt: new Date(),
      };
      mockPartyRepository.findOne.mockResolvedValue(party);
      mockPartyRepository.update.mockResolvedValue({ affected: 1 });

      const result = await partyService.updateParty(
        sessionId,
        updatePartyDto,
        mockUser,
      );
      expect(result).toBeDefined();
      expect(mockPartyRepository.update).toHaveBeenCalledWith(
        { sessionId },
        updatePartyDto,
      );
    });

    it('should throw NotFoundException if party not found', async () => {
      const sessionId = 1;
      const updatePartyDto: UpdatePartyDto = {
        locationId: 2,
        fee: 2000,
        startAt: new Date(),
        endAt: new Date(),
      };
      mockPartyRepository.findOne.mockResolvedValue(null);
      mockLocationService.getLocation.mockRejectedValue(
        new NotFoundException(`Party with session ID ${sessionId} not found`),
      );

      await expect(
        partyService.updateParty(sessionId, updatePartyDto, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deleteParty', () => {
    it('should delete a party', async () => {
      const sessionId = 1;
      const party = {
        id: 1,
        sessionId: sessionId,
        activityId: null,
        locationId: null,
        fee: 1000,
        startAt: new Date(),
        endAt: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
        activity: null,
        location: null,
      };

      mockPartyRepository.findOne.mockResolvedValue(party);
      mockPartyRepository.delete.mockResolvedValue({ affected: 1 });
      mockPartyParticipantRepository.delete.mockResolvedValue({ affected: 1 });

      const result = await partyService.deleteParty(sessionId, mockUser);
      expect(result).toEqual({ success: true });
      expect(mockPartyRepository.delete).toHaveBeenCalledWith({ sessionId });
    });

    it('should return success false if party not found', async () => {
      const sessionId = 1;
      mockPartyRepository.findOne.mockResolvedValue(null); // パーティが見つからない場合

      const result = await partyService.deleteParty(sessionId, mockUser);
      expect(result).toEqual({ success: false });
    });
  });

  describe('addParticipant', () => {
    it('should add a participant', async () => {
      const sessionId = 1;
      const role = PartyParticipantRole.HOST;
      const status = PartyParticipantStatus.CONFIRMED;
      const sessionParticipant = { id: 1 };
      const party = { id: 1 };

      mockSessionParticipantRepository.findOne.mockResolvedValue(
        sessionParticipant,
      );
      mockPartyRepository.findOne.mockResolvedValue(party);
      mockPartyParticipantRepository.create.mockReturnValue({
        partyId: party.id,
        sessionParticipantId: sessionParticipant.id,
        role,
        status,
      });
      mockPartyParticipantRepository.save.mockResolvedValue({ success: true });

      const result = await partyService.addParticipant(
        sessionId,
        role,
        status,
        mockUser,
      );
      expect(result).toEqual({ success: true });
      expect(mockPartyParticipantRepository.create).toHaveBeenCalledWith({
        partyId: party.id,
        sessionParticipantId: sessionParticipant.id,
        role,
        status,
      });
    });

    it('should throw NotFoundException if party not found', async () => {
      const sessionId = 1;
      const role = PartyParticipantRole.HOST;
      const status = PartyParticipantStatus.CONFIRMED;

      mockSessionParticipantRepository.findOne.mockResolvedValue({ id: 1 });
      mockPartyRepository.findOne.mockResolvedValue(null);

      await expect(
        partyService.addParticipant(sessionId, role, status, mockUser),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('removeParticipant', () => {
    it('should remove a participant', async () => {
      const sessionId = 1;
      const party = {
        id: 1,
        sessionId,
      };
      const sessionParticipant = {
        id: 1,
        user: mockUser,
      };
      const partyParticipant = {
        id: 1,
        partyId: party.id,
        sessionParticipantId: sessionParticipant.id,
      };

      mockPartyRepository.findOne.mockResolvedValue(party);
      mockSessionParticipantRepository.findOne.mockResolvedValue(
        sessionParticipant,
      );
      mockPartyParticipantRepository.findOne.mockResolvedValue(
        partyParticipant,
      );
      mockPartyParticipantRepository.delete.mockResolvedValue({ affected: 1 });

      const result = await partyService.removeParticipant(sessionId, mockUser);
      expect(result).toEqual({ success: true });
    });

    it('should return success false if party not found', async () => {
      const sessionId = 1;

      mockSessionParticipantRepository.findOne.mockResolvedValue({ id: 1 });
      mockPartyRepository.findOne.mockResolvedValue(null);

      const result = await partyService.removeParticipant(sessionId, mockUser);
      expect(result).toEqual({ success: false });
    });
  });
});
