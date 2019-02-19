class ChangeCompaniesNameLimit30 < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :companies, :name, :string, limit: 30
    end
    def down
      change_column :companies, :name, :string
    end
  end
end
