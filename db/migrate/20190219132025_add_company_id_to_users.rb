class AddCompanyIdToUsers < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM users;'
    add_reference :users, :company, null: false, index: true
  end

  def down
    remove_reference :users, :company, index: true
  end
end
