class AddStatusToBounties < ActiveRecord::Migration[7.0]
  def change
    add_column :bounties, :status, :string, default: 'pending'
  end
end
