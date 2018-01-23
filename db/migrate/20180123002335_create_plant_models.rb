class CreatePlantModels < ActiveRecord::Migration[5.1]
  def change
    create_table :plant_models do |t|
      t.string  :name
      t.integer :sensor_id
    
      t.timestamps
    end
  end
end
