class AddAssetIdToProjectModel < ActiveRecord::Migration
  def change
  	    add_column :projects, :asset_id, :integer

  end
end
