class RemoveExperimentIdFromExperimentDetails < ActiveRecord::Migration
  def change
    remove_column :experiment_details, :experiment_id, :int
  end
end
