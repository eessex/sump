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

presenter1 = Presenter.create(name: "Lock It Down")
presenter2 = Presenter.create(name: "Intraphenom Presents")

booking1 = ArtistsEvent.create(artist: artist1, event: event2)
booking2 = ArtistsEvent.create(artist: artist2, event: event2)
booking3 = ArtistsEvent.create(artist: artist3, event: event2)
booking4 = ArtistsEvent.create(artist: artist4, event: event1)
booking5 = ArtistsEvent.create(artist: artist5, event: event1)

event1.presenter = presenter1
event2.presenter = presenter1
event1.save
event2.save
