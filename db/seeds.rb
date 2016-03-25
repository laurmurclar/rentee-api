# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

properties = Property.create([
  {
    landlord_id: 1,
    street: 'Red Cottage',
    town: 'Little Town',
    county: 'Sligo',
    rent: 200,
    n_baths: 1,
    rent_allowance: false,
    ptrb: true,
    n_beds: 3,
    avail_beds: 3
  },
  {
    landlord_id: 2,
    street: 'Apt 6, Oak Avenue',
    town: 'Balooth',
    county: 'Leitrim',
    rent: 500,
    n_baths: 2,
    rent_allowance: true,
    ptrb: true,
    n_beds: 5,
    avail_beds: 3
  },
  {
    landlord_id: 2,
    street: 'Apt 72, Windy Walk',
    town: 'Balooth',
    county: 'Leitrim',
    rent: 550,
    n_baths: 2,
    rent_allowance: true,
    ptrb: true,
    n_beds: 5,
    avail_beds: 3
  }
])
