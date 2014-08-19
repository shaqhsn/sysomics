class RemoveExperimentDetailSIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :experiment_detail_id, :int
  end
end
