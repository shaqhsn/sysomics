class AddExperimentDetailIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :experiment_detail_id, :int
  end
end
