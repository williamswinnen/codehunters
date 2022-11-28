class CreateBounties < ActiveRecord::Migration[7.0]
  def change
    create_table :bounties do |t|
      t.text :content
      t.integer :price_cents
      t.integer :difficulty_level
      t.date :deadline
      t.string :github_repo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
