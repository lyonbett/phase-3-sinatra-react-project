class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :artist_id
      t.integer :year
      t.integer :duration
      t.string :genre
      t.string :image_url
    end
  end
end
