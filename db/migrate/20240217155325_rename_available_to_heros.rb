class RenameAvailableToHeros < ActiveRecord::Migration[7.1]
  def change
    rename_column :heros, :avalaible, :available
  end
end
