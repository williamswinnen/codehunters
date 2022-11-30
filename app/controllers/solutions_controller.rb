class SolutionsController < ApplicationController

  before_action :set_bounty, only: %i[new edit update]
  before_action :set_solution, only: %i[show edit destroy]

  def show
    @message = Message.new
    @bounty = @solution.bounty
    @other_user = current_user == @bounty.user ? @solution.user : @bounty.user
    authorize @solution
  end

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
    @solution = Solution.find(params[:id])
    authorize @solution
  end

  def update
    @solution = Solution.find(params[:id])
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
    redirect_to bounty_path(@solution.bounty), status: :see_other
  end

  private

  def solution_params
    params.require(:solution).permit(:title, :content ,:github_repo)
  end

  def set_bounty
    @bounty = Bounty.find(params[:bounty_id])
  end

  def set_solution
    @solution = Solution.find(params[:id])
  end
end
