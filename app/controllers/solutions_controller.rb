class SolutionsController < ApplicationController
  before_action :set_bounty, only: [:new, :create, :edit, :update]
  before_action :set_solution, only: [:edit, :update, :destroy]

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
      redirect_to bounty_path(@bounty)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @solution
  end

  def update
    @solution.update(solution_params)
    authorize @solution
    if @solution.save
      redirect_to bounty_path(@bounty)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @solution.destroy
    authorize @solution
    redirect_to @bounty_path, status: :see_other
  end

  private

  def solution_params
    params.require(:solution).permit(:title, :content ,:github_repo)
  end

  def set_bounty
    @bounty = Bounty.find(params[:id])
  end

  def set_solution
    @solution = Solution.find(params[:id])

  end
end
