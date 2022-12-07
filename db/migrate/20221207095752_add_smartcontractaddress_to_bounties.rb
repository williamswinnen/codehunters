class AddSmartcontractaddressToBounties < ActiveRecord::Migration[7.0]
  def change
    add_column :bounties, :smartcontractaddress, :string
  end
end
