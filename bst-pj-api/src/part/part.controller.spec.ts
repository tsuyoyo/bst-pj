/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { PartController } from './part.controller';
import { PartService } from './part.service';
import { CreatePartDto } from './dto/create-part.dto';
import { UpdatePartDto } from './dto/update-part.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from '../entities/user.entity';
import { ExternalService } from '../entities/types/external-service.enum';

describe('PartController', () => {
  let controller: PartController;
  let service: PartService;

  const mockPart = {
    id: 1,
    name: 'Test Part',
    description: 'Test Description',
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockUser: User = {
    id: 1,
    name: 'Test User',
    email: 'test@example.com',
    password: 'password',
    externalId: '',
    externalService: ExternalService.GOOGLE,
    iconUrl: '',
    profilePictureUrl: '',
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockPartService = {
    createPart: jest.fn().mockImplementation(
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      (_name: string, _description: string, _userId: number) =>
        Promise.resolve({
          part: mockPart,
        }),
    ),
    listParts: jest
      .fn()
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      .mockImplementation((_pageSize: number, _pageToken: string | null) =>
        Promise.resolve({
          parts: [mockPart],
          nextPageToken: '',
          totalSize: 1,
        }),
      ),
    getPart: jest
      .fn()
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      .mockImplementation((_id: number) =>
        Promise.resolve({
          part: mockPart,
        }),
      ),
    updatePart: jest.fn().mockImplementation(
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      (_id: number, _name: string, _description: string, _userId: number) =>
        Promise.resolve({
          part: { ...mockPart, name: _name, description: _description },
        }),
    ),
    deletePart: jest
      .fn()
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      .mockImplementation((_id: number) =>
        Promise.resolve({
          success: true,
        }),
      ),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PartController],
      providers: [
        {
          provide: PartService,
          useValue: mockPartService,
        },
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue({ canActivate: () => true })
      .compile();

    controller = module.get<PartController>(PartController);
    service = module.get<PartService>(PartService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('createPart', () => {
    it('should create a part', async () => {
      const createPartDto: CreatePartDto = {
        name: 'Test Part',
        description: 'Test Description',
      };

      const result = await controller.createPart(createPartDto, mockUser);
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Test Part');
      expect(result.part?.description).toBe('Test Description');
      expect(service.createPart).toHaveBeenCalledWith(
        'Test Part',
        'Test Description',
        mockUser.id,
      );
    });
  });

  describe('listParts', () => {
    it('should return a list of parts', async () => {
      const result = await controller.listParts(10, null);
      expect(result.parts).toBeDefined();
      expect(result.parts.length).toBe(1);
      expect(result.totalSize).toBe(1);
      expect(result.nextPageToken).toBe('');
      expect(service.listParts).toHaveBeenCalledWith(10, null);
    });
  });

  describe('getPart', () => {
    it('should return a part', async () => {
      const result = await controller.getPart(1);
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Test Part');
      expect(service.getPart).toHaveBeenCalledWith(1);
    });
  });

  describe('updatePart', () => {
    it('should update a part', async () => {
      const updatePartDto: UpdatePartDto = {
        name: 'Updated Part',
        description: 'Updated Description',
      };

      const result = await controller.updatePart(1, updatePartDto, mockUser);
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Updated Part');
      expect(result.part?.description).toBe('Updated Description');
      expect(service.updatePart).toHaveBeenCalledWith(
        1,
        'Updated Part',
        'Updated Description',
        mockUser.id,
      );
    });
  });

  describe('deletePart', () => {
    it('should delete a part', async () => {
      const result = await controller.deletePart(1);
      expect(result.success).toBe(true);
      expect(service.deletePart).toHaveBeenCalledWith(1);
    });
  });
});
