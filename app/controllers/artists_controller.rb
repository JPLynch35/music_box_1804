class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
    cookies[:secret] = "It's a secret to everybody"
    session[:secret] = "This time for real, though."
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end
end
