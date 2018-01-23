class Reading < ApplicationRecord
  belongs_to :sensor
  belongs_to :plant
end
