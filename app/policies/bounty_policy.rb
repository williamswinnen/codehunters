class BountyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(status: 'pending')
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end
end
