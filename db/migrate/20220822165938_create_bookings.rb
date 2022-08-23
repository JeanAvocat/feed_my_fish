class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :start_time
      t.date :end_time
      t.integer :total_price
      t.integer :owner_rating
      t.integer :user_rating
      t.references :fish, null: false, foreign_key: true
      t.references :keeper, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
