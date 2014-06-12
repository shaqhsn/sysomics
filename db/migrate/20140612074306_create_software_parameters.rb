class CreateSoftwareParameters < ActiveRecord::Migration
  def change
    create_table :software_parameters do |t|
      t.string :name
      t.string :value
      t.integer :software_id

      t.timestamps
    end
  end
end
