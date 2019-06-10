# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

inxs = Artist.find_or_create_by(name: "INXS" , bio: "A band from Australia")
aerosmith = Artist.find_or_create_by(name: "Aerosmith" , bio: "A band from Boston")
rolling_stones = Artist.find_or_create_by(name: "Rolling Stones" , bio: "A Band from London")

blues = Genre.find_or_create_by(name: "Blues")
rock = Genre.find_or_create_by(name: "Rock and Roll")
jazz = Genre.find_or_create_by(name: "Jazz")
country = Genre.find_or_create_by(name: "Country and Western")

song1 = Song.find_or_create_by(name: "Honky Tonk Blues" , artist_id: 2, genre_id: 4)
song2 = Song.find_or_create_by(name: "New Sensation" , artist_id: 1, genre_id: 2)
song3 = Song.find_or_create_by(name: "My Blue Heaven" , artist_id: 3, genre_id: 1)
song4 = Song.find_or_create_by(name: "In Crowd" , artist_id: 3, genre_id: 3)


# create_table "artists", force: :cascade do |t|
#   t.string   "name"
#   t.text     "bio"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "genres", force: :cascade do |t|
#   t.string   "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "songs", force: :cascade do |t|
#   t.string   "name"
#   t.integer  "artist_id"
#   t.integer  "genre_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
