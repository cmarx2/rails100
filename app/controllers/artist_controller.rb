class ArtistController < ApplicationController
  before_action :set_song

  def index
    @artists = @song.artists   
  end

  def show
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def create
    @artist = @song.artists.new(artist_params)
    if @artist.save
      redirect_to song_artist_path(@song.billboard_id, @song)
    else
      render :new
    end
  end

  def edit
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end

