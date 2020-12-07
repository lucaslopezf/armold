import { StateDto } from './StateDto';

export interface CountryDto {
  id: number;
  code: string;
  name: string;
  states?: StateDto[] | null;
}
