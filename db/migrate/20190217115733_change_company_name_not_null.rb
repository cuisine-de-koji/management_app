class ChangeCompanyNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :companies, :name, false
  end
end
