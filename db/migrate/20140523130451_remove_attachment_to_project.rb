class RemoveAttachmentToProject < ActiveRecord::Migration
  def change
  	  	    remove_column :projects, :attachmnet, :string
  	  	    add_column :projects, :attachment, :string


  end
end
