export enum Paths {
  Countries = '/geo/countries',
  States = '/geo/countries/:id/states',
  Cities = '/geo/states/:id/cities',
  Localities = '/geo/cities/:id/localities',
}

export enum TableNames {
  Country = 'country',
  State = 'state',
  City = 'city',
  Locality = 'locality',
}
