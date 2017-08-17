class Beacon < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :users, through: :visits

  validates :name, presence: true, uniqueness: true

  scope :id_search, -> (input) { where("identification_number = ?", "#{input}")}
  scope :name_search, -> (input) { where("name = ?", "#{input}")}
end
