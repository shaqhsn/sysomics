class AddFilesTable < ActiveRecord::Migration
  def change
    create_table :files do |t|
	t.column :name, :string
	t.column :attachment, :string
     end  	
  end
end

