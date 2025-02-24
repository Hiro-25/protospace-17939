class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :profile, :text
    add_column :users, :affiliation, :string
    add_column :users, :position, :string
  end
end
