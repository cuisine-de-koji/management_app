class AddUsersJobCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :job_cagtegory, :text, null: false
  end
end
