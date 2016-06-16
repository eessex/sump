# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dasaudit = Artist.create(name: "Das Audit")
sweettalk = Artist.create(name: "Sweet Talk")

E20151210 = Event.create(date: "2015-12-10 20:00:00", name: "Sump Holiday Party: Das Audit + Sweet Talk", url:"https://www.facebook.com/events/494999134012814/")
booking6 = ArtistsEvent.create(artist: dasaudit, event: E20151210)
booking8 = ArtistsEvent.create(artist: sweettalk, event: E20151210)

####

djshlucht = Artist.create(name: "DJ ShluchT")
eve = Artist.create(name: "Eve Essex")
gregfox = Artist.create(name: "Greg Fox")
leabertucci = Artist.create(name: "Lea Bertucci")
pedrolopes = Artist.create(name: "Pedro Lopes")
vanessarossetto = Artist.create(name: "Vanessa Rossetto")

E20151113 = Event.create(date: "2015-11-13 20:00:00", name: "Pedro Lopes, Greg Fox, Vanessa Rossetto, Lea Bertucci/Eve Essex/DJ ShluchT", description: "VANESSA ROSSETTO: aggressive electronic ambiance.<br />PEDRO LOPES: turntable percussion from Berlin<br />
GREG FOX: percussus among us.<br />LEA BERTUCCI / EVE ESSEX / DJ Shlucht: Two saxes + tape collage, first time collab")

booking7 = ArtistsEvent.create(artist: djshlucht, event: E20151113)
booking9 = ArtistsEvent.create(artist: eve, event: E20151113)
booking10 = ArtistsEvent.create(artist: gregfox, event: E20151113)
booking11 = ArtistsEvent.create(artist: leabertucci, event: E20151113)
booking12 = ArtistsEvent.create(artist: pedrolopes, event: E20151113)
booking13 = ArtistsEvent.create(artist: vanessarossetto, event: E20151113)

####
E20160315 = Event.create(date: "2016-03-15 20:00:00", name: "Masters of Entropy")

georgecremaschi = Artist.create(name: "George Cremaschi")
ikuemori = Artist.create(name: "Ikue Mori")
matthewostrowski = Artist.create(name: "Matthew Ostrowski")
morganzwerlein = Artist.create(name: "Morgan Zwerlein")
tomhamilton = Artist.create(name: "Tom Hamilton")

booking14 = ArtistsEvent.create(artist: georgecremaschi, event: E20160315)
booking15 = ArtistsEvent.create(artist: ikuemori, event: E20160315)
booking16 = ArtistsEvent.create(artist: matthewostrowski, event: E20160315)
booking17 = ArtistsEvent.create(artist: morganzwerlein, event: E20160315)
booking18 = ArtistsEvent.create(artist: tomhamilton, event: E20160315)

###

artist1 = Artist.create(name: "Chris McIntyre")
artist3 = Artist.create(name: "Ed Bear")
artist4 = Artist.create(name: "David First")
artist5 = Artist.create(name: "Synthetic Love Dream")
artist6 = Artist.create(name: "Systematic Distortion")


event1 = Event.create(name: "Work 04")
event2 = Event.create(name: "Work 05")



presenter1 = Presenter.create(name: "Lock It Down")
presenter2 = Presenter.create(name: "Intraphenom Presents")

booking1 = ArtistsEvent.create(artist: artist1, event: event2)
booking2 = ArtistsEvent.create(artist: ikuemori, event: event2)
booking3 = ArtistsEvent.create(artist: artist3, event: event2)
booking4 = ArtistsEvent.create(artist: artist4, event: event1)
booking5 = ArtistsEvent.create(artist: artist5, event: event1)

event1.presenter = presenter1
event2.presenter = presenter1
event1.save
event2.save
