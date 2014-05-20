class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.datetime :start_date
      t.datetime :end_date
      t.string :email

      t.timestamps
    end
  end
end
