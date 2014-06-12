class CreateDataProcessingTypes < ActiveRecord::Migration
  def change
    create_table :data_processing_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
