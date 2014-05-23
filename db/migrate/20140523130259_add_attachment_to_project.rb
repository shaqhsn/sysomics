class AddAttachmentToProject < ActiveRecord::Migration
  def change
  	    add_column :projects, :attachmnet, :string

  end
end
