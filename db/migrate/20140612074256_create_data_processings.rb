class CreateDataProcessings < ActiveRecord::Migration
  def change
    create_table :data_processings do |t|
      t.integer :data_processing_type_id
      t.integer :software_id
      t.integer :data_set_id
      t.integer :file_id

      t.timestamps
    end
  end
end
