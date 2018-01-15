class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :sensors, :type, :description
  end
end
