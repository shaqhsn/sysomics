class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
	change_column :users, :start_date,  :date 
	change_column :users, :end_date,  :date 

  end
end
