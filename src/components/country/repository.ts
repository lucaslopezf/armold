import { Page } from 'objection';
import { Country, GetCountriesQuery } from './models';

const defaultGraphOptions = { minimize: true, joinOperation: 'leftJoin' };

export const get = async ({ query, limit, page, orderBy }: GetCountriesQuery): Promise<Page<Country>> => {
  const countries = Country.query()
    .where(query)
    .withGraphFetched('states.cities.localities', defaultGraphOptions)
    .skipUndefined()
    .page(page, limit);

  if (orderBy) countries.orderBy(orderBy);
  return countries;
};
