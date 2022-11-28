class AddTitleToBounty < ActiveRecord::Migration[7.0]
  def change
    add_column :bounties, :title, :string
  end
end
