import { LocalityDto } from './LocalityDto';

export interface CityDto {
  id: number;
  name: string;
  localities?: LocalityDto[] | null;
}
