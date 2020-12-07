import { Model, RelationMapping, RelationMappings } from 'objection';
import { Locality } from '.';
import { TableNames } from '../../utils';

export class City extends Model {
  static get tableName() {
    return TableNames.City;
  }

  static get idColumn(): string {
    return 'id';
  }

  static get relationMappings(): RelationMappings {
    const localities: RelationMapping<Locality> = {
      relation: Model.HasManyRelation,
      modelClass: Locality,
      join: {
        from: `${TableNames.City}.id`,
        to: `${TableNames.Locality}.city_id`,
      },
    };

    return { localities };
  }
}
