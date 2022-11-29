class BountiesController < ApplicationController
  before_action :set_bounty, only: [:edit, :show, :update]
  def index
    @bounties = policy_scope(Bounty)
  end

  def new
    @bounty = Bounty.new
    authorize @bounty
  end

  def create
    @bounty = Bounty.new(bounties_params)
    @bounty.user = current_user
    authorize @bounty
    if @bounty.save
      redirect_to bounties(@bounty)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    authorize @bounty
  end

  def update
    @bounty.update(bounties_params)
    authorize @bounty
    redirect_to bounty_path(@bounty)
  end

  def edit
    authorize @bounty
  end


  private

  def bounties_params
    params.require(:bounty).permit(:title, :content, :price_cents, :github_repo, :deadline, :difficulty_level)
  end

  def set_bounty
    @bounty = Bounty.find(params[:id])
  end
end
