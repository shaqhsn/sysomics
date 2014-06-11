class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.string :title
      t.integer :cell_type_id
      t.integer :tissue_id
      t.integer :organism_id
      t.integer :molecule_id

      t.timestamps
    end
  end
end
