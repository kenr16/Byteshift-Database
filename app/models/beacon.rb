class Beacon < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :users, through: :visits

  validates :name, presence: true, uniqueness: true
end
