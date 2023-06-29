# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  [
  {title: "Batman",
  rating: "PG",
  total_gross: 0.125e6,
  description: "Batman hinting bad boys",
  released_on: "2022-03-20"},
  {title: "Robin Hood",
  rating: "PG11",
  total_gross: 0.75e5,
  description: "Robin Hood and his funny team own teh forest",
  released_on: "2010-01-10"},
  {title: "IrinMan",
  rating: "PG15",
  total_gross: 0.1015e6,
  description: "What this film is all about?",
  released_on: "2019-01-01"}
].each {|movie| Movie.create(movie)}
