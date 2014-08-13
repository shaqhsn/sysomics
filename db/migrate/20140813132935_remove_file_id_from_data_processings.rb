class RemoveFileIdFromDataProcessings < ActiveRecord::Migration
  def change
    remove_column :data_processings, :file_id, :string
  end
end
