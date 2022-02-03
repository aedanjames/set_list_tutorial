require 'rails_helper'

RSpec.describe Artist do 
    it {should have_many :songs}

    describe 'instance methods' do 
        describe '#average_song_length' do 
            before :each do 
                @prince = Artist.create!(name:"Prince")
                @purple = @prince.songs.create!(title:"purple", length: 401, play_count: 3572)
                @beret = @prince.songs.create!(title:"beret", length: 392, play_count: 1234678)
                @sorbet = @prince.songs.create!(title:"sorbet", length: 1, play_count: 657)
            end 
        it 'returns the average song length' do 
            expect(@prince.average_song_length.round(2)).to eq(264.67)
        end 
        end 
    end
end 
