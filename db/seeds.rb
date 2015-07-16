# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.create([
  {
    food: "banana",
    calories: 30
  },
  {
    food: "apple",
    calories: 20
  },
  {
    food: "chicken",
    calories: 120
  },
  {
    food: "eggs",
    calories: 70
  },
  {
    food: "almond",
    calories: 10
  }
  ])
