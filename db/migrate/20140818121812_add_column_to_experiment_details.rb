class AddColumnToExperimentDetails < ActiveRecord::Migration
  def change
    add_column :experiment_details, :name, :string
    add_column :experiment_details, :comment, :string
    add_column :experiment_details, :description, :string
  end
end
