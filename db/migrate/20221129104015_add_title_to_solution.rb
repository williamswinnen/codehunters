class AddTitleToSolution < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :title, :string
  end
end
