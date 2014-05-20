class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :experiment_id
      t.integer :publication_id
      t.integer :file_id
      t.string :title
      t.string :summary
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
