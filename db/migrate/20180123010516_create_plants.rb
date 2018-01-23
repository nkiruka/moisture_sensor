class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string  :name
      t.integer :sensor_id

      t.timestamps
    end
  end
end
