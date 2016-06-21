# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lockit = Presenter.create(name: "Lock It Down")
daniel = Presenter.create(name: "CT::SWaM", url: "http://ctswam.org/", description: "CT::SWaM [Contemporary Temporary Sound Works and Music] is an artist-run series that has been presenting performances, installations and workshops in spaces such as Eyebeam’s former Chelsea location, Fridman Gallery, and The Knockdown Center in NYC, as well as Neu West Berlin in Berlin. The series, initiated by Daniel Neumann in 2012, focuses on spatial sound works, where the distribution and localization of sounds is a primary compositional parameter and a central feature for the listener. These works consider architectural, acoustical and technological factors in exploring the complex and dynamic relationship between sound and space. The formats are open and include contemporary sound experiments, electro-acoustic multi-channel composition, improvisation, non-traditional performance configurations, lowercase artistic presence, and workshops – all of which diverge from a fixed perspective on audible space.")
issue = Presenter.create(name: "ISSUE Project Room", url: "http://issueprojectroom.org", description: "ISSUE Project Room is a pioneering Brooklyn-based performance nonprofit founded in 2003. ISSUE presents projects by interdisciplinary artists that expand the boundaries of artistic practice and stimulate critical dialogue in the broader community. ISSUE serves as a leading cultural incubator, facilitating the commission and premiere of innovative new works spanning genres of music, dance, literature and film.", image: "https://s3.amazonaws.com/sump/uploads/issue.jpg")
intraphenom = Presenter.create(name: "Intraphenom")
sump = Presenter.create(name: "the Sump")


bieber = User.create(first_name: "Justin", last_name: "Bieber", email: "justin@bieber.com", password: "password")
###
e20160621 = Event.create(date: "2016-06-21T20:00:00", presenter: sump, name: "Tamio Shiraishi + Leila Bordreuil, Aaron Zarzutzki + Ben Owen, Tristan Shepherd + Carlo Costa", price: "8", url: "https://www.facebook.com/events/966697236761412/", image: "https://s3.amazonaws.com/sump/uploads/13497754_10206204031599035_5813798871478576158_o.jpg")

leila = Artist.create(name: "Leila Bordreuil")
tamio = Artist.create(name: "Tamio Shiraishi")
aaron = Artist.create(name: "Aaron Zarzutzki")
ben = Artist.create(name: "Ben Owen")
tristan = Artist.create(name: "Tristan Shepherd")
carlo = Artist.create(name: "Carlo Costa")

b20160621a = ArtistsEvent.create(artist_id: leila.id, event_id: e20160621.id)
b20160621b = ArtistsEvent.create(artist: tamio, event: e20160621)
b20160621c = ArtistsEvent.create(artist: aaron, event: e20160621)
b20160621d = ArtistsEvent.create(artist: ben, event: e20160621)
b20160621e = ArtistsEvent.create(artist: tristan, event: e20160621)
b20160621f = ArtistsEvent.create(artist: carlo, event: e20160621)

###

e20160622 = Event.create(date: "2016-06-22T20:00:00", name: "Ross Chait, Bob Bellerue, Mysterious House, Eve Essex", url: "https://www.facebook.com/events/1628594964128501/", image: "https://s3.amazonaws.com/sump/uploads/13418810_960895524009409_2286252050821769589_n.jpg", presenter: sump)
ross = Artist.create(name: "Ross Chait")
bob = Artist.create(name: "Bob Bellerue")
james = Artist.create(name: "Mysterious House")
eve = Artist.create(name: "Eve Essex")

b20160622a = ArtistsEvent.create(artist: ross, event: e20160622)
b20160622b = ArtistsEvent.create(artist: bob, event: e20160622)
b20160622c = ArtistsEvent.create(artist: james, event: e20160622)
b20160622d = ArtistsEvent.create(artist: eve, event: e20160622)

###

dasaudit = Artist.create(name: "Das Audit")
sweettalk = Artist.create(name: "Sweet Talk")

e20151210 = Event.create(date: "2015-12-10T20:00:00", name: "Sump Holiday Party: Das Audit + Sweet Talk", url:"https://www.facebook.com/events/494999134012814/", image: "https://s3.amazonaws.com/sump/uploads/SumpXMasParty2015.jpg", presenter: sump)
booking6 = ArtistsEvent.create(artist: dasaudit, event: e20151210)
booking8 = ArtistsEvent.create(artist: sweettalk, event: e20151210)

####
spirituals = Artist.create(name: "Black Spirituals")

e20150922 = Event.create(date: "2015-09-22T20:00:00", name: "Black Spirituals", url:"http://issueprojectroom.org/event/black-spirituals", image: "https://s3.amazonaws.com/sump/uploads/BlackSpirituals_byOttoOppiChristiansen2015_01.jpg", description: "ISSUE Project Room presents the New York debut of Oakland-based electro-acoustic unit Black Spirituals, in collaboration with new Ridgewood venue The Sump and Poppers Locarno bar. The duo consists of Zachary James Watkins (electronics) and Marshall Trammell (percussion), and borrows the alias Black Spirituals from a found cassette documenting a lecture given by Bernice Reagon on the roots music of American Black Slaves. At the ecstatic intersection of rich harmonic tones and the heart-thumping, acoustic percussion, Black Spirituals transform performance sites with ritualistic communication, and manipulate temporal experience with their non-linear 'Multi-Aesthetic Approach to Improvisation.'", presenter: sump)
booking0 = ArtistsEvent.create(artist: spirituals, event: e20150922)

e20150922.presenter = issue
e20150922.save

###

e20160522 = Event.create(date: "2016-05-22T19:00:00", url: "https://www.facebook.com/events/241302709578278/", image: "https://s3.amazonaws.com/sump/uploads/13266075_668984023254237_2679777016319217280_n.jpg", name: "leerraum feat. Colliding Fields: Richard Garet, Zimoun, + more", description: "CT::SWaM presents a selected program of multi-channel releases and live performances from the Swiss-based label [ ] leerraum. 7pm doors and playback pieces, 8:30pm live sets", presenter: sump)

e20160522.presenter = daniel
e20160522.save

colliding = Artist.create(name: "Colliding Fields")
garet = Artist.create(name: "Richard Garet")
zimoun = Artist.create(name: "Zimoun")
kako = Artist.create(name: "Yuzo Kako")
janiv = Artist.create(name: "Janiv Oron")
incise = Artist.create(name: "D’Incise")
merino = Artist.create(name: "Elías Merino")

be20160522a = ArtistsEvent.create(artist: colliding, event: e20160522)
be20160522b = ArtistsEvent.create(artist: garet, event: e20160522)
be20160522c = ArtistsEvent.create(artist: zimoun, event: e20160522)
be20160522d = ArtistsEvent.create(artist: kako, event: e20160522)
be20160522e = ArtistsEvent.create(artist: janiv, event: e20160522)
be20160522f = ArtistsEvent.create(artist: incise, event: e20160522)
be20160522g = ArtistsEvent.create(artist: merino, event: e20160522)

###


djshlucht = Artist.create(name: "DJ ShluchT")
gregfox = Artist.create(name: "Greg Fox")
leabertucci = Artist.create(name: "Lea Bertucci")
pedrolopes = Artist.create(name: "Pedro Lopes")
vanessarossetto = Artist.create(name: "Vanessa Rossetto")

###

e20151113 = Event.create(date: "2015-11-13T20:00:00", name: "Pedro Lopes, Greg Fox, Vanessa Rossetto, Lea Bertucci/Eve Essex/DJ ShluchT", description: "VANESSA ROSSETTO: aggressive electronic ambiance. PEDRO LOPES: turntable percussion from Berlin. GREG FOX: percussus among us. LEA BERTUCCI / EVE ESSEX / DJ Shlucht: Two saxes + tape collage, first time collab", image: "https://s3.amazonaws.com/sump/uploads/12187852_1153849964642464_3358641727911236759_n.jpg", presenter: sump)

booking7 = ArtistsEvent.create(artist: djshlucht, event: e20151113)
booking9 = ArtistsEvent.create(artist: eve, event: e20151113)
booking10 = ArtistsEvent.create(artist: gregfox, event: e20151113)
booking11 = ArtistsEvent.create(artist: leabertucci, event: e20151113)
booking12 = ArtistsEvent.create(artist: pedrolopes, event: e20151113)
booking13 = ArtistsEvent.create(artist: vanessarossetto, event: e20151113)

####

e20160315 = Event.create(date: "2016-03-15T20:00:00", presenter: lockit, name: "Masters of Entropy", description: "IKUE MORI entered our consciousness as drummer in the iconic band DNA. She then pioneered the drum machine as a live creative instrument. Since 2000 she has used a laptop and has consistently been one of the most brilliantly insightful and provocative figures in New York's music community. TOM HAMILTON has composed and performed electronic music for over 40 years originating in the late-60s era of analog synthesis. He often explores the interaction of many simultaneous layers of activity, prompting the use of “present-time listening” on the part of both performer and listener. Hamilton has been a member of the late Robert Ashley's ensemble for 25 years, and he composed the electronic music for Ashley's opera-novel Quicksand, recently presented at The Kitchen. Life changed dramatically for MORGAN ZWERLEIN, a hardcore punk drummer from Long Island, when he became apprentice to the late Haitian Master Drummer, Frisner Augustin. Morgan immersed himself in the traditions of Vodou and has gained the respect of the Vodou community in New york, Haiti and beyond. He continues Augustin's legacy by leading Troupe Makandal and teaching. He is also a member of Zing Experience, Brother High Rara, Troupe Zetwal, Granchimen and others. KRK has devoted itself to a muscular integration of electronic and acoustic sonic worlds,incorporating technology from catgut and horsehair to infrared sensing and concatenative synthesis. Based in Prague, bass player GEORGE CREMASCHI has overlapped music, sound art and noise for 30 years, and is the director of Pražský Improvizační Orchestr (PIO).")

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

###

###
e20160211 = Event.create(name: "Leila Bourdriel &amp; Michael Foster, Jake Becker, Bentley Anderson, DJ Matthew Walker", date: "2016-03-10T20:00:00", image: "https://s3.amazonaws.com/sump/uploads/20160211-Sump-BourdrielFosterBeckerAnderson-Letter.jpg", presenter: sump)


e20160317 = Event.create(date: "2016-03-17T21:00:00", name: "Live Presence: Sunatirene, Lonely Boys, Alex Schmidt, DJ Simpson", presenter: intraphenom, description: "INTRA PHENOM is an ongoing New York-based performance series organized by Kayla Guthrie, highlighting female-identified artists in live genres including reading, movement, sound and song. SUNATIRENE, aka Sydney Spann, is a Baltimore based musician and performance artist whose solo project exists under the moniker Sunatirene (sún- ah-chur-ráin). Drawing from musique concrete, folk music, and pop tendencies, she uses field recordings, archival samples, generative processes, and her voice as soundscaping and storytelling tools. She translates visual symbols into aural forms and focuses on the healing and architectural potential of sound in an attempt to create new, genre-less music. Her first release is available via Ehse Records. LONELY BOYS are Daphne Ahlers and Rosa Rendl. They are based between Berlin and Vienna. ALEX SCHMIDT is an artist, teacher and performer who lives and works in New York City. She will perform at this installment of INTRA PHENOM LIVE PRESENCE as Trude Donovan (age 44), a former libels and damages attorney turned young adult novelist. Donovan's trilogy The Book of Odin tells the story of Rasmus, an asexual teen living in dystopic coastal Norway. This much anticipated reading commemorates the third installment of The Book of Odin, set to release with Hudson News Booksellers this fall. Donovan will reserve time after the reading to answer audience questions; however, video recording is strictly prohibited. Please arrive early as seating is limited.", image: "https://s3.amazonaws.com/sump/uploads/IntraPhenom032016.jpg")

sunatirene = Artist.create(name: "Sunatirene")
lonelyboys = Artist.create(name: "Lonely Boys")
djsimpson = Artist.create(name: "DJ Simpson")
alexschmidt = Artist.create(name: "Alex Schmidt")

booking18 = ArtistsEvent.create(artist: sunatirene, event: e20160317)
booking19 = ArtistsEvent.create(artist: lonelyboys, event: e20160317)
booking20 = ArtistsEvent.create(artist: djsimpson, event: e20160317)
booking22 = ArtistsEvent.create(artist: alexschmidt, event: e20160317)

###

artist1 = Artist.create(name: "Chris McIntyre")
artist3 = Artist.create(name: "Ed Bear")
artist4 = Artist.create(name: "David First")
artist5 = Artist.create(name: "Synthetic Love Dream")
artist6 = Artist.create(name: "Systematic Distortion")


event1 = Event.create(name: "Work 04: Synthetic Love Dream, David First + Jeanann Dara + Ka Baird, Systematic Distortion", url: "https://www.facebook.com/events/225525314496048/", date: "2016-05-24T20:00:00", description: "SYNTHETIC LOVE DREAM Max Zuckerman, Guitar ; David Lackner, Sax; Adrian Knight, Synth. Drawing from Jazz, Minimalism and Blues, Synthetic Love Dream explores long forms and tuning systems. DAVID FIRST w/ very special guests Jeanann Dara & Ka Baird will magnify a minute of notes and gestures into a set's worth of sound in order to best examine the air for missing keys. David First, Vong Co guitar, harmonica, transistor radio, theremin; Jeanann Dara, viola; Ka Baird, harmonium, voice. The NYC based SYSTEMATIC DISTORTION Orchestra was put together by French-Japanese violist Frantz Loriot. The orchestra features some of the most adventures and daring musicians from the New York downtown scene. Improvising all together is one of the goal. The music of the SDO drifts and scurries between different chapters, intensities and episodes. This ensemble manages, somehow, to be overwhelming and intimate simultaneously, as though they are playing for the whole world individually. FRANTZ LORIOT viola, JOE MOFFETT trumpet, NATHANIEL MORGAN alto sax, JONATHAN MORITZ tenor sax, BERN GERSTEIN trombone, SAM KULIK bass trombone, Sean Ali double bass, LEILA BORDREUIL cello, JOANNA MATTREY viola, CARLO COSTA percussions, DEVIN GRAY percussions & FLIN VAN HEMMEN percussions", presenter: lockit)

event2 = Event.create(name: "Work 05: Chris McIntyre, Ikue Mori, Ed Bear", url: "https://www.facebook.com/events/631575076999961/", date: "2016-05-31T20:00:00", description: "CHRIS MCINTYRE presents works for trombone and electronics. He leads a varied career in music as a performer, composer, and curator/producer. His projects include leading TILT Brass (Director), UllU (duo w/ David Shively), Either/Or Ensemble, and Ne(x)tworks. His trombone skills have been utilized in composer-led projects of Anthony Braxton, Zeena Parkins, John King, R. Luke DuBois, David First, Elliott Sharp, and Anthony Coleman. He has recorded for Tzadik, New World, POTTR, Non-Site and Mode. Curatorial work includes projects at The Kitchen, Guggenheim Museum, Issue Project Room, and The Stone, and Artistic Director of the MATA Festival (2007-10). IKUE MORI will perfrom in duet with DAVID WATSON. Since her work drumming with DNA in the early '80's she has consistently been a creative force in new music. In the last months she has worked with John Zorn, Jim Staley, Makigami Koichi, Satoko Fujii, Ned Rothenberg, Natsuki Tamura, Jim Black, Sylvie Couvoisier, Okkyung Lee, Susie Ibarra, Lotte Anker, Zeena Parkins, Erik Friedlander, Cyro Baptista, Anthony Coleman, Craig Taborn, Ches Smith, Vijay Iyer, Wadada Leo Smith to name but a few. She hasn't worked with David Watson in 20 years, so expect the unexpected. ED BEAR is an American performing artist and engineer. His work with robotics, sound, video, radio transmission and collective improvisation investigates the questionable calibration of perception and capital. As an educator and designer committed to an open source world, he researches and practices material reuse and as a civil responsibility.", presenter: lockit)

booking1 = ArtistsEvent.create(artist: artist1, event: event2)
booking2 = ArtistsEvent.create(artist: ikuemori, event: event2)
booking3 = ArtistsEvent.create(artist: artist3, event: event2)
booking4 = ArtistsEvent.create(artist: artist4, event: event1)
booking5 = ArtistsEvent.create(artist: artist5, event: event1)
booking6 = ArtistsEvent.create(artist: artist6, event: event1)
