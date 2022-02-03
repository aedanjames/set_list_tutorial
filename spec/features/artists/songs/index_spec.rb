# As a user
# When I visit and Artists Songs Index
# Then I see the titles of all of that Artist's Songs
# And I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists songs index' do 
    before :each do 
        @prince = Artist.create!(name:"Prince")
        @purple = @prince.songs.create!(title:"purple", length: 400, play_count: 3572)
        @beret = @prince.songs.create!(title:"beret", length: 392, play_count: 1234678)
    end 

    it 'shows all of the titles of the songs f or that artist' do 
            
        visit "/artists/#{@prince.id}/songs"
        
        expect(page).to have_content(@purple.title)
        expect(page).to have_content(@beret.title)
    end 

    it 'links to each songs show page' do 
        visit "/artists/#{@prince.id}/songs"

        click_on @purple.title

        expect(current_path).to eq("/songs/#{@purple.id}")
    end

    it 'shows the average song length for the artist' do
        visit "/artists/#{@prince.id}/songs"

        expect(page).to have_content("Average Song Length for Prince: 396")
    end 
end 
