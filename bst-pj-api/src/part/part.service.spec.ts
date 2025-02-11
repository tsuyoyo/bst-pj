/* eslint-disable @typescript-eslint/unbound-method */
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { PartService } from './part.service';
import { Part } from '../entities/part.entity';
import { NotFoundException } from '@nestjs/common';

describe('PartService', () => {
  let service: PartService;

  const mockPart = {
    id: 1,
    name: 'Test Part',
    description: 'Test Description',
    updatedUserId: 1,
    createdAt: new Date(),
    updatedAt: new Date(),
  };

  const mockRepository = {
    create: jest
      .fn()
      .mockImplementation(
        (dto: Partial<Part>): Part => ({ ...mockPart, ...dto }),
      ),
    save: jest
      .fn()
      .mockImplementation(
        (part: Partial<Part>): Promise<Part> =>
          Promise.resolve({ ...mockPart, ...part }),
      ),
    findOne: jest
      .fn()
      .mockImplementation(({ where: { id } }): Promise<Part | null> => {
        if (id === 1) {
          return Promise.resolve(mockPart as Part);
        }
        return Promise.resolve(null);
      }),
    findAndCount: jest
      .fn()
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      .mockImplementation((_options): Promise<[Part[], number]> => {
        return Promise.resolve([[mockPart as Part], 1]);
      }),
    delete: jest.fn().mockImplementation((id: number) => {
      if (id === 1) {
        return Promise.resolve({ affected: 1 });
      }
      return Promise.resolve({ affected: 0 });
    }),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        PartService,
        {
          provide: getRepositoryToken(Part),
          useValue: mockRepository,
        },
      ],
    }).compile();

    service = module.get<PartService>(PartService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('createPart', () => {
    it('should create a part', async () => {
      const result = await service.createPart(
        'Test Part',
        'Test Description',
        1,
      );
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Test Part');
      expect(result.part?.description).toBe('Test Description');
    });
  });

  describe('listParts', () => {
    it('should return a list of parts', async () => {
      const result = await service.listParts(10, null);
      expect(result.parts).toBeDefined();
      expect(result.parts.length).toBe(1);
      expect(result.totalSize).toBe(1);
      expect(result.nextPageToken).toBe('');
    });
  });

  describe('getPart', () => {
    it('should return a part', async () => {
      const result = await service.getPart(1);
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Test Part');
    });

    it('should throw NotFoundException when part not found', async () => {
      await expect(service.getPart(2)).rejects.toThrow(NotFoundException);
    });
  });

  describe('updatePart', () => {
    it('should update a part', async () => {
      const result = await service.updatePart(
        1,
        'Updated Part',
        'Updated Description',
        1,
      );
      expect(result.part).toBeDefined();
      expect(result.part?.name).toBe('Updated Part');
      expect(result.part?.description).toBe('Updated Description');
    });

    it('should throw NotFoundException when part not found', async () => {
      await expect(
        service.updatePart(2, 'Updated Part', 'Updated Description', 1),
      ).rejects.toThrow(NotFoundException);
    });
  });

  describe('deletePart', () => {
    it('should delete a part', async () => {
      const result = await service.deletePart(1);
      expect(result.success).toBe(true);
    });

    it('should return false when part not found', async () => {
      const result = await service.deletePart(2);
      expect(result.success).toBe(false);
    });
  });
});
