import { get } from './repository';
import { GetCountriesRequest } from './models/dto/request/GetCountriesRequest';
import { PaginatedResponse } from 'armold-test';
import { mapGetToQuery } from './utils';
import { mapperCountryToDto } from './utils/mappers/country';
import { CountryDto } from './models';

export const getCountries = async (request: GetCountriesRequest): Promise<PaginatedResponse<CountryDto>> => {
  const query = mapGetToQuery(request);
  const { total, results } = await get(query);
  const data = results.map((c) => mapperCountryToDto(c));
  return {
    limit: query.limit,
    page: query.page,
    total,
    results: data,
  };
};
