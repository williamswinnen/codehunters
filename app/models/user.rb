class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bounties, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :solutions, dependent: :destroy
  has_many :homeworks, dependent: :destroy

  has_one_attached :photo

  def update_ranking
    self.ranking = 0

    solutions.each do |solution|
      if solution.status == "accepted"
        self.ranking += solution.bounty.difficulty_level
      end
    end
    self.ranking = self.ranking.fdiv(self.solutions.where(status: 'accepted').count)
    return self.ranking
  end

  def prize_money
    money = 0
    solutions.each do |solution|
      if solution.status == "accepted"
        money += solution.bounty.price_cents
      end
    end
    money
  end
end
