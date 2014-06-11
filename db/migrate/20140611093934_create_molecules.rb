class CreateMolecules < ActiveRecord::Migration
  def change
    create_table :molecules do |t|
      t.string :name

      t.timestamps
    end
  end
end
