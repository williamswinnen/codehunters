class UpdateStatusDefaultToSolutions < ActiveRecord::Migration[7.0]
  def change
    change_column_default :solutions, :status, from: nil, to: "pending"
  end
end
