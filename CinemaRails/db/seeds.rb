# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Actor.create(name: "George Clooney")
a2 = Actor.create(name: "Matt Damon")
a3 = Actor.create(name: "Bradley Cooper")
a4 = Actor.create(name: "Johny Depp")

m1 = Movie.create(title: "Rated R", release_date: "22 Sept 2006", director: "John Favreau", rating: 1.7)
m2 = Movie.create(title: "G for General", release_date: "4 Aug 1992", director: "George Lucas", rating: 8.4)
m3 = Movie.create(title: "Never Lucky", release_date: "15 Jun 2001", director: "Stephen Speilberg", rating: 5.9)

m1.actors << [a1,a2,a3,a4]
m2.actors << [a1,a4]
m3.actors << [a2,a3]