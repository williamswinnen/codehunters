class SolutionsController < ApplicationController
  before_action :set_bounty, only: [:new, :create]

  def new
    @solution = Solution.new
    authorize @solution
  end

  def create
    @solution = Solution.new(solution_params)
    authorize @solution
    @solution.bounty = @bounty
    @solution.user = current_user
    if @solution.save
      redirect_to bounty_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:starting_time, :ending_time)
  end

  def set_bounty
    @bounty = Bounty.find(params[:bounty_id])
  end
end
