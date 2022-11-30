class Solution < ApplicationRecord
  belongs_to :bounty
  belongs_to :user

  has_many :messages, dependent: :destroy

  validates :content, :github_repo, presence: true
end
