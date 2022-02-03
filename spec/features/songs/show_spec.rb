require 'rails_helper'
# As a user
# When I visit /songs/1 where 1 is the id of a song in my database
# Then I see that song's title and artist
# And I do not see any of the other songs in my database

RSpec.describe 'the songs show page' do
    it 'displays the song title' do 
        artist = Artist.create(name: "Carly Rae Jepsen")
        # song = Song.create(title: "I Really Like You", length: 200, play_count: 21343)
        # artists.songs.create will automatically associate the two 
        song_1 = artist.songs.create!(title: "I Really Like You", length: 200, play_count: 21343)
        song_2 = artist.songs.create!(title: "Call Me Maybe ", length: 180, play_count: 345521343)
        # visit "/songs/#{song_1.id}"
        visit "/songs/#{song_1.id}"

        # We now test for user functionality 
        expect(page).to have_content(song_1.title)
        expect(page).to_not have_content(song_2.title)

    end 

    it 'displays the name of the artist for the song' do 
        artist = Artist.create(name: "Carly Rae Jepsen")
        song_1 = artist.songs.create!(title: "I Really Like You", length: 200, play_count: 21343)
        song_2 = artist.songs.create!(title: "Call Me Maybe ", length: 180, play_count: 345521343)
        visit "/songs/#{song_1.id}"

        expect(page).to have_content(artist.name)
    end
end 