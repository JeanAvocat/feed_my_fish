class AddCoordinatesToFish < ActiveRecord::Migration[7.0]
  def change
    add_column :fish, :latitude, :float
    add_column :fish, :longitude, :float
  end
end
