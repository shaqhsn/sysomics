class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.integer :data_set_type_id
      t.integer :project_id
      t.date :create_date
      t.string :name
      t.string :comment
      t.integer :file_id

      t.timestamps
    end
  end
end
