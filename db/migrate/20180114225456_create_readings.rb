class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.integer :sensor_id
      t.integer :value
      t.date :date

      t.timestamps
    end
  end
end
