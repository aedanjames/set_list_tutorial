# As a Visitor
# When I visit the artists index
# and click on 'New Artist'
# Then my current path is '/artists/new'
# and I fill in the artist's name
# Then I click 'Create Artist'
# show page doesn't exist yet, so video alters expectation at first to route to different page
# I am redirected to this new artists show page

require 'rails_helper'
RSpec.describe 'the Artist creation' do 
    it 'links to the new page from the artists index' do 
        visit '/artists'

        click_link("New Artist")
        expect(current_path).to eq('/artists/new')
    end 

    it 'can create a new artist' do 
        # execution
        visit '/artists/new'
        fill_in('Name', with: 'Prince')
        click_button('Create Artist')
        # expectation
        # new_artist_id = Artist.last.id 
        expect(current_path).to eq("/artists/")
        expect(page).to have_content("Prince")
    end 

end 