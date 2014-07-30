class RemoveColumnFileIdFromProjects < ActiveRecord::Migration
  def change
  remove_column :projects, :file_id
  end
end
