# app/models/artist.rb

class Song < ActiveRecord::Base
  belongs_to :artist
end
