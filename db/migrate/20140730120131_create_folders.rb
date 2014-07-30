class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :name
      t.integer :parent_id
      t.integer :project_id

      t.timestamps
    end
    add_index :folders, :parent_id
	add_index :folders, :project_id
  end
end
