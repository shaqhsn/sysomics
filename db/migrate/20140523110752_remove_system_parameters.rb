class RemoveSystemParameters < ActiveRecord::Migration
  def change
  	drop_table :system_parameters
  end
end
