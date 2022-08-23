class CreateFish < ActiveRecord::Migration[7.0]
  def change
    create_table :fish do |t|
      t.string :title
      t.string :location
      t.string :picture_url
      t.string :specie
      t.text :description
      t.integer :daily_price
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
