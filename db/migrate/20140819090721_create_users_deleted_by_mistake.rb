class CreateUsersDeletedByMistake < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :first_name
            t.string :last_name
            t.string :username
            t.date :start_date
            t.date :end_date
            t.string :email
            t.string:password_digest
            t.string:remember_token
            t.timestamps
            
        end
        add_index  :users, :remember_token
        add_index :users, :email, unique: true
        
    end
end
