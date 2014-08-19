class RemovePublicaionIdFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :publication_id, :int
  end
end
