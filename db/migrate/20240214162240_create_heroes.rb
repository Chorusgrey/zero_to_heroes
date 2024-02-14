class CreateHeroes < ActiveRecord::Migration[7.1]
  def change
    create_table :heroes do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.string :address
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
