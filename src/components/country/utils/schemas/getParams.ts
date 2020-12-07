import { JSONSchema7 } from 'json-schema';

export const getParamsSchema: JSONSchema7 = {
  type: 'object',
  properties: {
    _limit: {
      type: ['integer', 'string'],
    },
    _offset: {
      type: ['integer', 'string'],
    },
    name: {
      type: 'string',
    },
    code: {
      type: 'string',
    },
    sort: {
      type: 'string',
    },
  },
  required: [],
  additionalProperties: false,
};
