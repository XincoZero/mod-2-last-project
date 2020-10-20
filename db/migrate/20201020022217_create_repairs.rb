class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.string :car_model
      t.string :repair_type
      t.integer :avg_cost
      t.integer :avg_time
      t.integer :user_id
      t.integer :dealership_id
      t.timestamps
    end
  end
end
