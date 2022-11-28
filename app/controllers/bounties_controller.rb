class BountiesController < ApplicationController
  before_action :set_bounty, only: [:edit, :show]
  def index
    @bounties = Bounty.all
  end

  def new
    @bounty = Bounty.new
  end

  def create
    @bounty = Bounty.new(bounties_params)
    if @bounty.save
      redirect_to bounties(@bounty)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end


  private

  def bounties_params
    params.require(:bounty).permit(:content, :price_cents, :github_repo, :deadline, :difficulty_level)
  end

  def set_bounty
    @bounty = Bounty.find(params[:id])
  end
end
