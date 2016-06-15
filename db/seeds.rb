# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist1 = Artist.create(name: "Chris McIntyre")
artist2 = Artist.create(name: "Ikue Mori")
artist3 = Artist.create(name: "Ed Bear")
artist4 = Artist.create(name: "David First")
artist5 = Artist.create(name: "Synthetic Love Dream")
artist6 = Artist.create(name: "Systematic Distortion")

event1 = Event.create(title: "Work 04")
event2 = Event.create(title: "Work 05")

booking1 = ArtistsEvent.create(artist: artist1, event: event1)
