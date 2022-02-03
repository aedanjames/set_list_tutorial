class SongsController < ApplicationController
    def index
        @songs = Song.all
    end 

    def show 
        # find is activerecord method that expects an id
        # We can access params object in pry here (binding.pry)
        @song = Song.find(params[:id])
    end 
end 