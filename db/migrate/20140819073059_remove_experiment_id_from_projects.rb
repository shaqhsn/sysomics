class RemoveExperimentIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :experimnet_detail_id, :int
  end
end
