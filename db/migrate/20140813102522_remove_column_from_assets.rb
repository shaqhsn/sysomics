class RemoveColumnFromAssets < ActiveRecord::Migration
  def change
      remove_column :assets, :project_id
      remove_column :assets, :data_set_id

  end
end
