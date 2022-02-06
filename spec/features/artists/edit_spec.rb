# As a visitor
# When I visit the artists index
# And I click 'Edit' next to an artist
# Then I iam taken to an edit artists form

# And I click a button to 'Update Artist'
# Then I am redirected back to the Artists index
# And I see the updated name 
require 'rails_helper'

RSpec.describe 'the artist edit' do 
    it 'links to the edit page' do 
        artist = Artist.create!(name: "Prince")
        visit '/artists'
        click_button "Edit #{artist.name}"
        expect(current_path).to eq("/artists/#{artist.id}/edit")
    end

    it 'can edit the artist' do
        artist = Artist.create!(name: 'Princ') 
        visit '/artists'
        expect(page).to have_content('Princ')

        click_button 'Edit Princ'
        
        fill_in 'Name', with: 'Prince'
        click_button 'Update Artist' 

        expect(current_path).to eq("/artists")
        expect(page).to have_content("Prince")
    end 
end 