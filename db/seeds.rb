# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Artist.destroy_all

@prince = Artist.create!(name:"Prince")
@purple = @prince.songs.create!(title:"purple", length: 3245, play_count: 3572)
@beret = @prince.songs.create!(title:"beret", length: 392, play_count: 1234678)