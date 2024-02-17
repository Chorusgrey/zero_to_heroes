class AddAddressToHeros < ActiveRecord::Migration[7.1]
  def change
    add_column :heros, :address, :string
  end
end
