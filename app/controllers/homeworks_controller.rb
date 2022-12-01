class HomeworksController < ApplicationController

  before_action :set_bounty, only: %i[destroy create]

  def create
    @homework = Homework.new
    authorize @homework
    @bounty = Bounty.find(params[:bounty_id])
    @user = current_user
    @homework.bounty = @bounty
    @homework.user = @user
    @homework.save
    redirect_to bounty_path(@bounty)
  end

  def destroy
    @homework = Homework.find(params[:id])
    authorize @homework
    @homework.destroy
    redirect_to dashboard_path
  end

  private

  def set_bounty
    @bounty = Bounty.find(params[:bounty_id])
  end
end
