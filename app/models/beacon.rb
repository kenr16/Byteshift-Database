class Beacon < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :users, through: :visits

  validates :name, presence: true, uniqueness: true

  scope :search, -> (input) do
    Beacon.where(identification_number: "#{input}").or(Beacon.where(name: "#{input}"))
  end
end
