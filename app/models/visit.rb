class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :beacon

  scope :day_search, -> (input) { where("day = ?", "#{input}")}
end
