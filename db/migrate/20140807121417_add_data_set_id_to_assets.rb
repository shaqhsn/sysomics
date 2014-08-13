class AddDataSetIdToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :data_set_id, :integer
  end
end
