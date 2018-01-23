class PlantModel < ApplicationRecord
  has_many :readings
  belongs_to :sensors
end
