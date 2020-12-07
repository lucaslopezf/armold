import { Model, RelationMapping, RelationMappings } from 'objection';
import { State } from '.';
import { TableNames } from '../../utils';

export class Country extends Model {
  static get tableName() {
    return TableNames.Country;
  }

  static get idColumn(): string {
    return 'id';
  }

  id!: number;
  name!: string;
  iso_3!: string;
  states?: State[];

  static get relationMappings(): RelationMappings {
    const states: RelationMapping<State> = {
      relation: Model.HasManyRelation,
      modelClass: State,
      join: {
        from: `${TableNames.Country}.id`,
        to: `${TableNames.State}.country_id`,
      },
    };

    return { states };
  }
}
