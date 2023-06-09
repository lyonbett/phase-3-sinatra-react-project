
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/artists" do
    artists = Artist.all
    artists.to_json
  end

  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json
  end

  post "/artists" do
    artist = Artist.create(name: params[:name], age: params[:age])
    artist.to_json
  end

  patch "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.update(name: params[:name], age: params[:age])
    artist.to_json
  end

  delete "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.destroy
    { message: "Artist deleted successfully" }.to_json
  end

  get "/songs" do
    songs = Song.all
    songs.to_json
  end

  get "/songs/:id" do
    song = Song.find(params[:id])
    song.to_json
  end

  post "/songs" do
    song = Song.create(
      title: params[:title],
      artist_id: params[:artist_id],
      year: params[:year],
      duration: params[:duration],
      genre: params[:genre],
      image_url: params[:image_url]
    )
    song.to_json
  end

  patch "/songs/:id" do
    song = Song.find(params[:id])
    song.update(
      title: params[:title],
      artist_id: params[:artist_id],
      year: params[:year],
      duration: params[:duration],
      genre: params[:genre],
      image_url: params[:image_url]
    )
    song.to_json
  end

  delete "/songs/:id" do
    song = Song.find(params[:id])
    song.destroy
    { message: "Song deleted successfully" }.to_json
  end
end


