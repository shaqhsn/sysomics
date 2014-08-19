class AddColumnToDataProcessings < ActiveRecord::Migration
  def change
    add_column :data_processings, :description, :string
    add_column :data_processings, :command, :string
    add_column :data_processings, :note, :string
  end
end
