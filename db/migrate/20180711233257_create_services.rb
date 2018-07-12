class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.float :duration, null: false
      t.float :price, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
