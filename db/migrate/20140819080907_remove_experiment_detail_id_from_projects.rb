class RemoveExperimentDetailIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :experiment_details_id, :int
  end
end
