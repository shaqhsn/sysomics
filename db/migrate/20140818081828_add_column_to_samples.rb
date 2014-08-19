class AddColumnToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :strain_id, :integer
  end
end
