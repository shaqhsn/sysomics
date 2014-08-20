class RemoveProjectIdFromExperimentDetails < ActiveRecord::Migration
  def change
    remove_column :experiment_details, :project_id, :int
  end
end
