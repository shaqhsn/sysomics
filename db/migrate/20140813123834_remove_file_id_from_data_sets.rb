class RemoveFileIdFromDataSets < ActiveRecord::Migration
  def change
    remove_column :data_sets, :file_id, :string
  end
end
