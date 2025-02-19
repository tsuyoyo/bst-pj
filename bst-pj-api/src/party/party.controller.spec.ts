import { Test, TestingModule } from '@nestjs/testing';
import { PartyController } from './party.controller';
import { PartyService } from './party.service';
import { User } from '../entities/user.entity';
import { CreatePartyDto } from './dto/create-party.dto';
import { UpdatePartyDto } from './dto/update-party.dto';
import { AddPartyParticipantDto } from './dto/add-participant.dto';
import {
  CreatePartyResponse,
  GetPartyResponse,
  UpdatePartyResponse,
  DeletePartyResponse,
  AddPartyParticipantResponse,
  RemovePartyParticipantResponse,
} from '../proto/bst/v1/party_service';
import {
  PartyParticipantRole as ProtoPartyParticipantRole,
  PartyParticipantStatus as ProtoPartyParticipantStatus,
} from '../proto/bst/v1/party';
import { JwtService } from '@nestjs/jwt';
import { getRepositoryToken } from '@nestjs/typeorm';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { PartyParticipantRole } from '../entities/types/party-participant-role.enum';
import { PartyParticipantStatus } from '../entities/types/party-participant-status.enum';

describe('PartyController', () => {
  let partyController: PartyController;

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

  const mockPartyService = {
    createParty: jest.fn(),
    getParty: jest.fn(),
    updateParty: jest.fn(),
    deleteParty: jest.fn(),
    addParticipant: jest.fn(),
    removeParticipant: jest.fn(),
  };

  const mockJwtService = {
    sign: jest.fn(),
    verify: jest.fn(),
  };

  const mockUserRepository = {
    findOne: jest.fn(),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PartyController],
      providers: [
        {
          provide: PartyService,
          useValue: mockPartyService,
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
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    partyController = module.get<PartyController>(PartyController);
  });

  it('should be defined', () => {
    expect(partyController).toBeDefined();
  });

  describe('createParty', () => {
    it('should create a party', async () => {
      const sessionId = 1;
      const createPartyDto: CreatePartyDto = {
        locationId: 1,
        fee: 1000,
        startAt: new Date(),
        endAt: new Date(),
      };

      const expectedResponse: CreatePartyResponse = {
        party: {
          location: {
            id: 1,
            name: 'Test Location',
            additionalInfo: '',
            area: undefined,
            mapUrl: '',
          },
          fee: 1000,
          startAt: new Date(),
          endAt: new Date(),
          participants: [],
        },
      };

      mockPartyService.createParty.mockResolvedValue(expectedResponse);

      const result = await partyController.createParty(
        sessionId,
        createPartyDto,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.createParty).toHaveBeenCalledWith(
        sessionId,
        createPartyDto,
        mockUser,
      );
    });
  });

  describe('getParty', () => {
    it('should return a party', async () => {
      const sessionId = 1;
      const expectedResponse: GetPartyResponse = {
        party: {
          location: {
            id: 1,
            name: 'Test Location',
            additionalInfo: '',
            area: undefined,
            mapUrl: '',
          },
          fee: 1000,
          startAt: new Date(),
          endAt: new Date(),
          participants: [],
        },
      };
      mockPartyService.getParty.mockResolvedValue(expectedResponse);

      const result = await partyController.getParty(sessionId);
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.getParty).toHaveBeenCalledWith(sessionId);
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

      const expectedResponse: UpdatePartyResponse = {
        party: {
          location: {
            id: 1,
            name: 'Test Location',
            additionalInfo: '',
            area: undefined,
            mapUrl: '',
          },
          fee: 2000,
          startAt: new Date(),
          endAt: new Date(),
          participants: [],
        },
      };
      mockPartyService.updateParty.mockResolvedValue(expectedResponse);

      const result = await partyController.updateParty(
        sessionId,
        updatePartyDto,
        mockUser,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.updateParty).toHaveBeenCalledWith(
        sessionId,
        updatePartyDto,
        mockUser,
      );
    });
  });

  describe('deleteParty', () => {
    it('should delete a party', async () => {
      const sessionId = 1;
      const user: User = {
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
      const expectedResponse: DeletePartyResponse = { success: true };
      mockPartyService.deleteParty.mockResolvedValue(expectedResponse);

      const result = await partyController.deleteParty(sessionId, user);
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.deleteParty).toHaveBeenCalledWith(
        sessionId,
        user,
      );
    });
  });

  describe('addParticipant', () => {
    it('should add a participant', async () => {
      const sessionId = 1;
      const request: AddPartyParticipantDto = {
        role: ProtoPartyParticipantRole.PARTY_PARTICIPANT_ROLE_PARTICIPANT,
        status: ProtoPartyParticipantStatus.PARTY_PARTICIPANT_STATUS_PENDING,
      };
      const user: User = {
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
      const expectedResponse: AddPartyParticipantResponse = { success: true };
      mockPartyService.addParticipant.mockResolvedValue(expectedResponse);

      const result = await partyController.addParticipant(
        sessionId,
        request,
        user,
      );
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.addParticipant).toHaveBeenCalledWith(
        sessionId,
        PartyParticipantRole.PARTICIPANT,
        PartyParticipantStatus.PENDING,
        user,
      );
    });
  });

  describe('removeParticipant', () => {
    it('should remove a participant', async () => {
      const sessionId = 1;
      const user: User = {
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
      const expectedResponse: RemovePartyParticipantResponse = {
        success: true,
      };
      mockPartyService.removeParticipant.mockResolvedValue(expectedResponse);

      const result = await partyController.removeParticipant(sessionId, user);
      expect(result).toEqual(expectedResponse);
      expect(mockPartyService.removeParticipant).toHaveBeenCalledWith(
        sessionId,
        user,
      );
    });
  });
});
