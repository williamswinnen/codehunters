class Updateonsenbalescouilles < ActiveRecord::Migration[7.0]
  def change
    change_column :bounties, :price_cents, :float
  end
end
