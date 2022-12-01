class AddRankingToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ranking, :integer
  end
end
