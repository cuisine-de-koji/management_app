class AddCompanyIdToAnken < ActiveRecord::Migration[5.2]
  def change
    add_reference :ankens, :company, index: true
  end
end
