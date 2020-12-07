import { Model, RelationMapping, RelationMappings } from 'objection';
import { City } from '.';
import { TableNames } from '../../utils';

export class State extends Model {
  static get tableName() {
    return TableNames.State;
  }

  static get idColumn(): string {
    return 'id';
  }

  id!: number;
  name!: string;
  cities?: City[];

  static get relationMappings(): RelationMappings {
    const cities: RelationMapping<City> = {
      relation: Model.HasManyRelation,
      modelClass: City,
      join: {
        from: `${TableNames.State}.id`,
        to: `${TableNames.City}.state_id`,
      },
    };

    return { cities };
  }
}
