class Booking < ApplicationRecord
  belongs_to :fish
  belongs_to :keeper, class_name: "User"
end
