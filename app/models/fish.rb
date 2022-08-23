class Fish < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  SPECIES = ["Blodfish", "Poisson volant", "Poisson rouge", "Grosse carpe", "Poisson à dents", "Sirène", "Poisson combattant", "Guppies"]
  validates :title, presence: true
  validates :location, presence: true
  validates :specie, presence: true, inclusion: { in: SPECIES }
  validates :daily_price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
