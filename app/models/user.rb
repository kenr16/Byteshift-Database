class User < ApplicationRecord
  has_many :visits
  has_many :beacons, through: :visits

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
end
