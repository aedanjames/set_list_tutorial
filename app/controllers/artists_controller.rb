class ArtistsController < ApplicationController
    def index
        @artists = Artist.all 
    end
    
    def new
    end 

    def create
        # artist = Artist.create(name: params[:name])
        artist = Artist.create(artist_params)
        redirect_to "/artists/"
    end 

    def artist_params
        # .permit pulls out key value pair
        params.permit(:name)
        # params.permit(:name, :length, :any_other_attribute)
    end 
end 