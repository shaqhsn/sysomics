class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.string :comment
      t.string :description

      t.timestamps
    end
  end
end
