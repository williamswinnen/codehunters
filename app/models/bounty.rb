class Bounty < ApplicationRecord
  belongs_to :user
  has_many :homeworks, dependent: :destroy
  has_many :solutions, dependent: :destroy

  monetize :price_cents

  validates :content, :price_cents, :github_repo, :title, presence: true
  validates :difficulty_level, inclusion: { in: (1..5),
    message: "%{value} is not a valid difficulty level you dumb fuck, it goes from 1 to 5" }

  def self.unsolved!
    Bounty.all.each do |bounty|
      if bounty.status == 'pending' && bounty.deadline && (bounty.deadline - (Date.today + 24)).negative?
        bounty.status = 'unsolved'
        bounty.save!
      end
    end
  end
end
