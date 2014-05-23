class DropFiles < ActiveRecord::Migration
  def change
  	drop_table:files
  end
end
