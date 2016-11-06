class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :maker
      t.string :size
      t.integer :price
      t.text :description
      t.string :picture
      t.integer :category_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
