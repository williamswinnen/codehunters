class Bounty < ApplicationRecord
  belongs_to :user
  has_many :solutions, dependent: :destroy

  validates :content, :price_cents, :github_repo, :title, presence: true
end
