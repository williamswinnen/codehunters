class RemoveTitleFromSolutions < ActiveRecord::Migration[7.0]
  def change
    remove_column :solutions, :title, :string
  end
end
