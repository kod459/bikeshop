class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :password_digest
      t.integer :phone_number

      t.timestamps
    end
  end
end
