import { createMapper } from 'armold-microservices';

const mappings = {
  sort: [{ label: 'code', value: 'iso_3' }],
};

export const { mapToLabel, mapToValue } = createMapper(mappings);
