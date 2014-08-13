class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :attachment
      t.integer :project_id
      t.integer :user_id
      t.integer :folder_id

      t.timestamps
    end
  end
end
