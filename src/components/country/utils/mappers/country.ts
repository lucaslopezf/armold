import { City, Country, CountryDto, Locality, State, StateDto, CityDto, LocalityDto } from '../../models';

export const mapperLocalityToDto = ({ id, description }: Locality): LocalityDto => {
  return {
    id,
    name: description,
  };
};

export const mapperCityToDto = ({ id, name, localities }: City): CityDto => {
  return {
    id,
    name,
    localities: localities?.map((l) => mapperLocalityToDto(l)) || null,
  };
};

export const mapperStateToDto = ({ id, name, cities }: State): StateDto => {
  return {
    id,
    name,
    cities: cities?.map((c) => mapperCityToDto(c)) || null,
  };
};

export const mapperCountryToDto = ({ id, iso_3, name, states }: Country): CountryDto => {
  return {
    id,
    code: iso_3,
    name,
    states: states?.map((s) => mapperStateToDto(s)) || null,
  };
};
