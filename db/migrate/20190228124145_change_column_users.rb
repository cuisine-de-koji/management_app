class ChangeColumnUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :job_category, :text
  end
end
