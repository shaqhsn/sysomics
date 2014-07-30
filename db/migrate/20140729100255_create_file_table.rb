class CreateFileTable < ActiveRecord::Migration
  def change
    create_table :files do |t|
	t.column :attachment, :string
     end  	
  end
end
