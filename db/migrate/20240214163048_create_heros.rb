class CreateHeros < ActiveRecord::Migration[7.1]
  def change
    create_table :heros do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :avalaible
      t.integer :price_per_day

      t.timestamps
    end
  end
end
