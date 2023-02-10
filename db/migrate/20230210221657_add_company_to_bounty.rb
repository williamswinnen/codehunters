class AddCompanyToBounty < ActiveRecord::Migration[7.0]
  def change
    add_column :bounties, :company, :string
  end
end
