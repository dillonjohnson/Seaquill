class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName
      t.decimal :pricePerUnit
      t.integer :stock

      t.timestamps
    end
  end
end
