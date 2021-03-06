import { Request, Response } from 'express';
import { getCountries } from './service';
import { HttpStatusCode } from 'armold-microservices';
import { Paths } from './utils';

export default [
  {
    path: Paths.Countries,
    method: 'get',
    handler: [
      async ({ query }: Request, res: Response): Promise<void> => {
        const result = await getCountries(query);
        res.status(HttpStatusCode.Ok).send(result);
      },
    ],
  },
];
