class User < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :beacons, through: :visits

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true

  scope :email_search, -> (input) { where("email = ?", "#{input}")}
end
