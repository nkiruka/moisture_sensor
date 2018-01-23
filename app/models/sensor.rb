class Sensor < ApplicationRecord
  has_many :readings
  has_one :plant
end
