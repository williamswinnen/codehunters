class Solution < ApplicationRecord
  belongs_to :bounty
  belongs_to :user

  validates :content, :github_repo, presence: true
end
