class Fish < ApplicationRecord

  belongs_to :owner, class_name: "User"
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  SPECIES = ["Blodfish", "Poisson volant", "Poisson rouge", "Grosse carpe", "Poisson à dents", "Sirène", "Poisson combattant", "Guppies"]
  validates :title, presence: true
  validates :location, presence: true
  validates :specie, presence: true, inclusion: { in: SPECIES }
  validates :daily_price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  # use gem PG_search in the action index to search fish
  include PgSearch::Model
  pg_search_scope :search_fish_by_caracteristic, against: %i[title location specie daily_price], using: { tsearch: { prefix: true } }

  # use Geocoding gem to display fish location in the show
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
