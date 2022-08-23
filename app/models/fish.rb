class Fish < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  FISH = ["Blodfish", "Poisson volant", "Poisson rouge", "Grosse carpe", "Poisson à dents", "Sirène", "Poisson combattant", "Guppies"]
  validates :title, presence: true
  validates :location, presence: true
  validates :specie, presence: true, inclusion: FISH
  validates :daily_price, presence: true, numericality: { only_integer: true }
end
