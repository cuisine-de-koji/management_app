class AddEmailAndPasswordToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :email, :string, null: false
    add_column :companies, :password_digest, :string, null: false
  end
end
