class RemovePictureUrlToFish < ActiveRecord::Migration[7.0]
  def change
    remove_column :fish, :picture_url
  end
end
