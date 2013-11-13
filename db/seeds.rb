# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

summer_hits = Mixtape.create(:name => "Summer Hits")

get_lucky = Song.create(:name => "Get Lucky", :artist_name => "Daft Punk")
we_cant_stop = Song.create(:name => "We Can't Stop", :artist_name => "Miley Cyrus")

# MixtapeSong.create(:song_id => get_lucky.id, :mixtape_id => summer_hits.id)
MixtapeSong.create(:song => get_lucky, :mixtape => summer_hits)
summer_hits.mixtape_songs.create(:song => we_cant_stop)

dj = User.create(:email => "dj@flatironschool.com", :password => 'test', :password_confirmation => 'test')
listener = User.create(:email => "listener@flatironschool.com", :password => 'test', :password_confirmation => 'test')
dave = User.create(:email => "dave@flatironschool.com", :password => 'test', :password_confirmation => 'test')
kyle = User.create(:email => "kyle@flatironschool.com", :password => 'test', :password_confirmation => 'test')
sam = User.create(:email => "sam@flatironschool.com", :password => 'test', :password_confirmation => 'test')
greg = User.create(:email => "greg@flatironschool.com", :password => 'test', :password_confirmation => 'test')
vivian = User.create(:email => "vivian@flatironschool.com", :password => 'test', :password_confirmation => 'test')
manley = User.create(:email => "manley@flatironschool.com", :password => 'test', :password_confirmation => 'test')


UserMixtape.create(:user => dj, :mixtape => summer_hits)
summer_hits.user_mixtapes.create(:user => listener)

##  Come up with a way to add other users to a mixtape
##  Go to the mix tape page ... to add user to mix tape
