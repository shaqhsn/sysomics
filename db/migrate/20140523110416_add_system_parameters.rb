class AddSystemParameters < ActiveRecord::Migration
  def change
  	  drop_table :system_parameters do |t|
      t.string :name
      t.string :path
    end
  end
end
