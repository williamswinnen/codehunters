class DashboardController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    @users = User.all
    authorize :dashboard
    @solved_bounties = @user.bounties.where(status: 'solved')
    @pending_bounties = @user.bounties.where(status: 'pending')
    @homeworks = @user.homeworks
  end


  # def homework
  #   @user = current_user
  #   @bounty = Bounty.find(params[:id])
  #   @user.my_homework << @bounty
  # end


end
