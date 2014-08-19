class AddDescriptionToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :description, :string
    add_column :samples, :notes, :string
  end
end
