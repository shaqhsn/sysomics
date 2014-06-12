class CreatePublicRepositories < ActiveRecord::Migration
  def change
    create_table :public_repositories do |t|
      t.string :name
      t.string :url
      t.string :record_id

      t.timestamps
    end
  end
end
