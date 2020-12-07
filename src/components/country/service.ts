import { get } from './repository';
import { Country } from './models/db';
import { GetCountriesRequest } from './models/dto/request/GetCountriesRequest';
import { PaginatedResponse } from 'armold-test';
import { mapGetToQuery } from './utils';

export const getCountries = async (request: GetCountriesRequest): Promise<PaginatedResponse<Country>> => {
  const query = mapGetToQuery(request);
  const { total, results } = await get(query);

  return {
    limit: query.limit,
    page: query.page,
    total,
    results,
  };
};
