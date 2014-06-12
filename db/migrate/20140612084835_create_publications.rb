class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer :public_repository_id
      t.string :DOI

      t.timestamps
    end
  end
end
