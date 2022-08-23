class Booking < ApplicationRecord
  belongs_to :fish
  belongs_to :keeper, class_name: "User"

  STATUS = ["En attente de validation", "Confirmé", "Refusé"]
  validates :status, presence: true, inclusion: STATUS

  validates :owner_rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }
  validates :user_rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates_comparison_of :end_time, greater_than: :start_time, greater_than: Date.today
end
