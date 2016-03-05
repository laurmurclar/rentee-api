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
    street: 'Apt 4, Oak Avenue',
    town: 'Baloo',
    county: 'Louth',
    rent: 500,
    n_baths: 2,
    rent_allowance: true,
    ptrb: true
  }
])
