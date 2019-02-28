class ComtypeToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :com_type, :integer
  end
end
