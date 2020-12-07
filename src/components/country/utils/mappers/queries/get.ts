import { DEFAULT_LIMIT, DEFAULT_PAGE } from 'armold-test';
import { GetCountriesQuery, GetCountriesRequest } from '../../../models';
import { mapToValue } from '../mappings';

export interface OrderBy {
  column: string;
  order: 'asc' | 'desc';
}

const mapSortToOrderBy = (sort: string): OrderBy[] => {
  const criterias = sort.split(',');

  return criterias.map((x) => {
    return {
      column: x.replace('+', '').replace('-', '').trim(),
      order: x.includes('-') ? 'desc' : 'asc',
    };
  });
};

const mapColumns = ({ column, order }: OrderBy): OrderBy => {
  return {
    column: mapToValue('sort', column),
    order: order,
  };
};

export const mapGetToQuery = (request: GetCountriesRequest): GetCountriesQuery => {
  const { _limit, _page, code, name, sort } = request;
  const query: GetCountriesQuery = {
    limit: Number(_limit) || DEFAULT_LIMIT,
    page: Number(_page) || DEFAULT_PAGE,
    query: {
      iso_3: code,
      name,
    },
    orderBy: sort
      ? mapSortToOrderBy(sort)
          .map((x) => mapColumns(x))
          .filter((x) => x.column)
      : [],
  };

  return query;
};
