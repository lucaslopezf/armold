import { OrderByDescriptor } from 'objection';

export interface GetCountriesQuery {
  limit: number;
  page: number;
  orderBy: OrderByDescriptor[];
  query: {
    name?: string;
    iso_3?: string;
  };
}
