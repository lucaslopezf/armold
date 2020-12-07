import { CityDto } from './CityDto';

export interface StateDto {
  id: number;
  name: string;
  cities?: CityDto[] | null;
}
