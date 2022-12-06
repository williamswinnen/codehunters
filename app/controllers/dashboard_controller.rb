class DashboardController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    @users = User.all
    authorize :dashboard
    @solved_bounties = @user.bounties.where(status: 'solved')
    @pending_bounties = @user.bounties.where(status: 'pending')
    @unsolved_bounties = @user.bounties.where(status: 'unsolved')
    @homeworks = @user.homeworks
  end
end
