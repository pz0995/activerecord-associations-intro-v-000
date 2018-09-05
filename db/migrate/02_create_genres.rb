class CreateGenres < ActiveRecord::Migration[4.2]
  def change
    create_table :genres do |t|
      t.string :name
    end
  end
end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
end