class AddProjectIdToExperimentDetail < ActiveRecord::Migration
  def change
    add_column :experiment_details, :project_id, :int
  end
end
