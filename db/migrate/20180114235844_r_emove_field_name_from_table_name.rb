class REmoveFieldNameFromTableName < ActiveRecord::Migration[5.1]
  def change
    remove_column :readings, :date
  end
end
