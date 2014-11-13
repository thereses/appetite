# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cafe.all.delete_all
cafes = Cafe.create(
  [{ name: 'Olleys', address: '65-69 Norwood Rd SE24 9AA', latitude:51.450542, longitude:-0.100502 },
    { name: 'Pullens', address: '293-295 Railton Road SE24 0JP', latitude:51.453375, longitude:-0.102759 },
    { name: 'Pullens', address: '131-133 Dulwich Road SE24 0NG', latitude:51.452786, longitude:-0.103028 }
  ])
