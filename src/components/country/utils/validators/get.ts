import { ValidationError, validateJsonSchema, isValidNumber } from 'armold-test';
import { GetCountriesRequest } from '../../models';
import { getParamsSchema } from '../schemas/getParams';

export const validateGet = (request: GetCountriesRequest): ValidationError[] => {
  return validateJsonSchema(getParamsSchema, request);
};
