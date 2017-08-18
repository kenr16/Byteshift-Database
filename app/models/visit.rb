class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :beacon

  scope :search, -> (input) { where("day = ?", "#{input}")}
end
