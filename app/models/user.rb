class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bounties
  has_many :messages
  has_many :solutions
  has_many :homeworks


  def update_ranking
    self.ranking = 0
    solutions.each do |solution|
      if solution.status == "validated"
        self.ranking += solution.bounty.difficulty_level
      end
    end
    self.save
  end
end
