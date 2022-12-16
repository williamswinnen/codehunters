class AddDefault0ToRankingForUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :ranking, from: nil, to: 0
  end
end
