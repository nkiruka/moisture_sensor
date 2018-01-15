class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string  :type
      t.string  :model

      t.timestamps
    end
  end
end
