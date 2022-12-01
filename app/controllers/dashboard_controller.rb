class DashboardController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    authorize :dashboard
    @solved_bounties = @user.bounties.where(status: 'solved')
    @pending_bounties = @user.bounties.where(status: 'pending')
  end


end
