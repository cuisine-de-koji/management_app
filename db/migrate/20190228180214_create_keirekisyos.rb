class CreateKeirekisyos < ActiveRecord::Migration[5.2]
  def change
    create_table :keirekisyos do |t|
      t.string :name, null: false
      t.text :kakoyaku
      t.text :tokugi
      t.text :food

      t.timestamps
    end
  end
end
