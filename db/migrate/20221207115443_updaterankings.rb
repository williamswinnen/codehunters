class Updaterankings < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :ranking, :float
  end
end
