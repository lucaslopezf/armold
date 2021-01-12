import { get } from './repository';
import { GetCountriesRequest } from './models/dto/request/GetCountriesRequest';
import { HTTPArmoldError, HttpStatusCode, PaginatedResponse } from 'armold-test';
import { mapGetToQuery } from './utils';
import { mapperCountryToDto } from './utils/mappers/country';
import { CountryDto } from './models';
import { validateGet } from './utils/validators/get';

export const getCountries = async (request: GetCountriesRequest): Promise<PaginatedResponse<CountryDto>> => {
  const errors = validateGet(request);
  if (errors.length) throw new HTTPArmoldError(HttpStatusCode.BadRequest, errors);

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
