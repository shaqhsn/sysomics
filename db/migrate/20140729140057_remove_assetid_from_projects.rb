class RemoveAssetidFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :asset_id
  end
end
