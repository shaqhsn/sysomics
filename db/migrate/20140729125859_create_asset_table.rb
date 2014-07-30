class CreateAssetTable < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    		t.column :attachment, :string
			t.column :size ,:integer
    end
  end
end
