class CreateMechanics < ActiveRecord::Migration
  def change
    create_table :mechanics do |t|
      t.string :name
      t.text :qualifications
      t.string :password_digest

      t.timestamps
    end
  end
end
