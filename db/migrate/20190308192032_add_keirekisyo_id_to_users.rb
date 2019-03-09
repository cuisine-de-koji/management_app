class AddKeirekisyoIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :keirekisyos, :user, index: true
  end
end
