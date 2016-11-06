class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.text :problem
      t.integer :bike_id
      t.integer :mechanic_id

      t.timestamps
    end
  end
end
