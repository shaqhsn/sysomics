class CreateProjectAttachments < ActiveRecord::Migration
  def change
    create_table :project_attachments do |t|
      t.integer :project_id
      t.string :attachment

      t.timestamps
    end
  end
end
