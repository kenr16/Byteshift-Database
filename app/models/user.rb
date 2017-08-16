class User < ApplicationRecord
  has_many :visits
  has_many :beacons, through: :visits
end
