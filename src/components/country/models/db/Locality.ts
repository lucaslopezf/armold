import { Model } from 'objection';
import { TableNames } from '../../utils';

export class Locality extends Model {
  static get idColumn(): string {
    return 'id';
  }

  static get tableName() {
    return TableNames.Locality;
  }
}
