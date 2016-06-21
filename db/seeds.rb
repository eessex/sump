# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bieber = User.create(first_name: "Justin", last_name: "Bieber", email: "justin@bieber.com", password: "password")

dasaudit = Artist.create(name: "Das Audit")
sweettalk = Artist.create(name: "Sweet Talk")

e20151210 = Event.create(date: "2015-12-10T20:00:00", name: "Sump Holiday Party: Das Audit + Sweet Talk", url:"https://www.facebook.com/events/494999134012814/", image: "https://s3.amazonaws.com/sump/uploads/SumpXMasParty2015.jpg")
booking6 = ArtistsEvent.create(artist: dasaudit, event: e20151210)
booking8 = ArtistsEvent.create(artist: sweettalk, event: e20151210)

####

djshlucht = Artist.create(name: "DJ ShluchT")
eve = Artist.create(name: "Eve Essex")
gregfox = Artist.create(name: "Greg Fox")
leabertucci = Artist.create(name: "Lea Bertucci")
pedrolopes = Artist.create(name: "Pedro Lopes")
vanessarossetto = Artist.create(name: "Vanessa Rossetto")

e20151113 = Event.create(date: "2015-11-13T20:00:00", name: "Pedro Lopes, Greg Fox, Vanessa Rossetto, Lea Bertucci/Eve Essex/DJ ShluchT", description: "VANESSA ROSSETTO: aggressive electronic ambiance.<br />PEDRO LOPES: turntable percussion from Berlin<br />
GREG FOX: percussus among us.<br />LEA BERTUCCI / EVE ESSEX / DJ Shlucht: Two saxes + tape collage, first time collab", image: "https://s3.amazonaws.com/sump/uploads/12187852_1153849964642464_3358641727911236759_n.jpg")

booking7 = ArtistsEvent.create(artist: djshlucht, event: e20151113)
booking9 = ArtistsEvent.create(artist: eve, event: e20151113)
booking10 = ArtistsEvent.create(artist: gregfox, event: e20151113)
booking11 = ArtistsEvent.create(artist: leabertucci, event: e20151113)
booking12 = ArtistsEvent.create(artist: pedrolopes, event: e20151113)
booking13 = ArtistsEvent.create(artist: vanessarossetto, event: e20151113)

####
lockit = Presenter.create(name: "Lock It Down")
e20160315 = Event.create(date: "2016-03-15T20:00:00", name: "Masters of Entropy", description: "IKUE MORI entered our consciousness as drummer in the iconic band DNA. She then pioneered the drum machine as a live creative instrument. Since 2000 she has used a laptop and has consistently been one of the most brilliantly insightful and provocative figures in New York's music community. TOM HAMILTON has composed and performed electronic music for over 40 years originating in the late-60s era of analog synthesis. He often explores the interaction of many simultaneous layers of activity, prompting the use of “present-time listening” on the part of both performer and listener. Hamilton has been a member of the late Robert Ashley's ensemble for 25 years, and he composed the electronic music for Ashley's opera-novel Quicksand, recently presented at The Kitchen. Life changed dramatically for MORGAN ZWERLEIN, a hardcore punk drummer from Long Island, when he became apprentice to the late Haitian Master Drummer, Frisner Augustin. Morgan immersed himself in the traditions of Vodou and has gained the respect of the Vodou community in New york, Haiti and beyond. He continues Augustin's legacy by leading Troupe Makandal and teaching. He is also a member of Zing Experience, Brother High Rara, Troupe Zetwal, Granchimen and others. KRK has devoted itself to a muscular integration of electronic and acoustic sonic worlds,incorporating technology from catgut and horsehair to infrared sensing and concatenative synthesis. Based in Prague, bass player GEORGE CREMASCHI has overlapped music, sound art and noise for 30 years, and is the director of Pražský Improvizační Orchestr (PIO).")

georgecremaschi = Artist.create(name: "George Cremaschi")
ikuemori = Artist.create(name: "Ikue Mori")
matthewostrowski = Artist.create(name: "Matthew Ostrowski")
morganzwerlein = Artist.create(name: "Morgan Zwerlein")
tomhamilton = Artist.create(name: "Tom Hamilton")

booking14 = ArtistsEvent.create(artist: georgecremaschi, event: e20160315)
booking15 = ArtistsEvent.create(artist: ikuemori, event: e20160315)
booking16 = ArtistsEvent.create(artist: matthewostrowski, event: e20160315)
booking17 = ArtistsEvent.create(artist: morganzwerlein, event: e20160315)
booking18 = ArtistsEvent.create(artist: tomhamilton, event: e20160315)

e20160315.presenter = lockit
e20160315.save

###

###
e20160211 = Event.create(name: "Leila Bourdriel &amp; Michael Foster, Jake Becker, Bentley Anderson, DJ Matthew Walker", image: "https://s3.amazonaws.com/sump/uploads/20160211-Sump-BourdrielFosterBeckerAnderson-Letter.jpg", date: "2016-03-17T21:00:00")

intraphenom = Presenter.create(name: "Intraphenom Presents")
e20160317 = Event.create(date: "2016-03-17T21:00:00", name: "Live Presence: Sunatirene, Lonely Boys, Alex Schmidt, DJ Simpson", description: "INTRA PHENOM is an ongoing New York-based performance series organized by Kayla Guthrie, highlighting female-identified artists in live genres including reading, movement, sound and song. SUNATIRENE, aka Sydney Spann, is a Baltimore based musician and performance artist whose solo project exists under the moniker Sunatirene (sún- ah-chur-ráin). Drawing from musique concrete, folk music, and pop tendencies, she uses field recordings, archival samples, generative processes, and her voice as soundscaping and storytelling tools. She translates visual symbols into aural forms and focuses on the healing and architectural potential of sound in an attempt to create new, genre-less music. Her first release is available via Ehse Records. LONELY BOYS are Daphne Ahlers and Rosa Rendl. They are based between Berlin and Vienna. ALEX SCHMIDT is an artist, teacher and performer who lives and works in New York City. She will perform at this installment of INTRA PHENOM LIVE PRESENCE as Trude Donovan (age 44), a former libels and damages attorney turned young adult novelist. Donovan's trilogy The Book of Odin tells the story of Rasmus, an asexual teen living in dystopic coastal Norway. This much anticipated reading commemorates the third installment of The Book of Odin, set to release with Hudson News Booksellers this fall. Donovan will reserve time after the reading to answer audience questions; however, video recording is strictly prohibited. Please arrive early as seating is limited.", image: "https://s3.amazonaws.com/sump/uploads/IntraPhenom032016.jpg")

sunatirene = Artist.create(name: "Sunatirene")
lonelyboys = Artist.create(name: "Lonely Boys")
djsimpson = Artist.create(name: "DJ Simpson")
alexschmidt = Artist.create(name: "Alex Schmidt")

booking18 = ArtistsEvent.create(artist: sunatirene, event: e20160317)
booking19 = ArtistsEvent.create(artist: lonelyboys, event: e20160317)
booking20 = ArtistsEvent.create(artist: djsimpson, event: e20160317)
booking22 = ArtistsEvent.create(artist: alexschmidt, event: e20160317)

e20160317.presenter = intraphenom
e20160317.save

###

artist1 = Artist.create(name: "Chris McIntyre")
artist3 = Artist.create(name: "Ed Bear")
artist4 = Artist.create(name: "David First")
artist5 = Artist.create(name: "Synthetic Love Dream")
artist6 = Artist.create(name: "Systematic Distortion")


event1 = Event.create(name: "Work 04", date: "2016-01-10T20:00:00")
event2 = Event.create(name: "Work 05", date: "2015-04-10T20:00:00")

booking1 = ArtistsEvent.create(artist: artist1, event: event2)
booking2 = ArtistsEvent.create(artist: ikuemori, event: event2)
booking3 = ArtistsEvent.create(artist: artist3, event: event2)
booking4 = ArtistsEvent.create(artist: artist4, event: event1)
booking5 = ArtistsEvent.create(artist: artist5, event: event1)

event1.presenter = lockit
event2.presenter = lockit
event1.save
event2.save
