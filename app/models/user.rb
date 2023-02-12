class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :password, presence: true

  has_many :bounties, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :solutions, dependent: :destroy
  has_many :homeworks, dependent: :destroy
  has_many :notifications, dependent: :destroy

  has_one_attached :photo

  def update_ranking
    self.ranking = 0

    self.solutions.each do |solution|
      if solution.status == "accepted"
        if solution.bounty.difficulty_level.is_a? Integer
          self.ranking += solution.bounty.difficulty_level * (solution.bounty.price_cents * 1000)
        end
      end
    end
    self.save
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
