class AddUrlToPublication < ActiveRecord::Migration
  def change
    add_column :publications, :url, :string
  end
end
