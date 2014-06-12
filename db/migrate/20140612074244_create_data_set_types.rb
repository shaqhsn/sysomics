class CreateDataSetTypes < ActiveRecord::Migration
  def change
    create_table :data_set_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
