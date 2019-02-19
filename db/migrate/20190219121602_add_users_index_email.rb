class AddUsersIndexEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :companies, :email, :unique => true
  end
end
