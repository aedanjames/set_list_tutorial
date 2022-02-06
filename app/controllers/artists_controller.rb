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

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.find(params[:id])
        # update is activerecord method to update, the artist_params is from strong params below 
        artist.update(artist_params)
        redirect_to '/artists'
    end 

private
    def artist_params
        # .permit pulls out key value pair
        params.permit(:name)
        # params.permit(:name, :length, :any_other_attribute)
    end 
end 