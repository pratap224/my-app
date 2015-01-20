class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_num
      t.text :address

      t.timestamps null: false
    end
  end
end
