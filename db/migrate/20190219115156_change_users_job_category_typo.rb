class ChangeUsersJobCategoryTypo < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :job_cagtegory, :job_category
  end
end
