class Reading < ApplicationRecord
  belongs_to :sensor

  scope :timestamps, ->(select_statment) do
    select(select_statment).group("sensor_id, interval_timestamp")
    .order("interval_timestamp desc")
  end
end
