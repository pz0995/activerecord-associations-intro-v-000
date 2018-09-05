class CreateSongs < ActiveRecord::Migration[4.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
end
