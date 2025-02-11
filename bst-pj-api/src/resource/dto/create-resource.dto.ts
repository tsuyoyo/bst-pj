import { IsNotEmpty, IsString, IsUrl, IsEnum } from 'class-validator';
import { CreateResourceRequest } from '../../proto/bst/v1/resource_service';
import { Resource_ResourceType } from '../../proto/bst/v1/content';

export class CreateResourceDto implements CreateResourceRequest {
  @IsNotEmpty()
  @IsEnum(Resource_ResourceType)
  type: Resource_ResourceType;

  @IsNotEmpty()
  @IsUrl()
  url: string;

  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  description: string;
}
