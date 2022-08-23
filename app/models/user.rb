class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :fish, foreign_key: :owner_id
  has_many :bookings, foreign_key: :keeper_id

  validates :first_name, :last_name, :email, :password, presence: true
end
