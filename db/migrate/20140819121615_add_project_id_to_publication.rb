class AddProjectIdToPublication < ActiveRecord::Migration
  def change
    add_column :publications, :project_id, :int
  end
end
