class CreateExperimentDetails < ActiveRecord::Migration
  def change
    create_table :experiment_details do |t|
      t.integer :sample_id
      t.integer :platform_id
      t.integer :protocol_id
      t.integer :disease_id
      t.integer :experiment_id

      t.timestamps
    end
  end
end
