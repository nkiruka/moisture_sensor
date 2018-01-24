class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :threshold
      
      t.timestamps
    end
  end
end
