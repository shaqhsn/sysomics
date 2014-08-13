 
class CreateTableAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :attachment
      t.integer :project_id
      t.integer :user_id
	  t.references :assetable, :polymorphic => true

    end
  end
end

    
