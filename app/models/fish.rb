class Fish < ApplicationRecord
  include PgSearch::Model

  belongs_to :owner, class_name: "User"
  has_many :bookings

  has_one_attached :photo

  SPECIES = ["Blodfish", "Poisson volant", "Poisson rouge", "Grosse carpe", "Poisson à dents", "Sirène", "Poisson combattant", "Guppies"]
  validates :title, presence: true
  validates :location, presence: true
  validates :specie, presence: true, inclusion: { in: SPECIES }
  validates :daily_price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  pg_search_scope :search_fish_by_caracteristic, against: %i[title location specie daily_price], using: { tsearch: { prefix: true } }
end
