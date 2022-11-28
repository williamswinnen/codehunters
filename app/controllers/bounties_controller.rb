class BountiesController < ApplicationController
  before_action :set_bounty, only: [:create, :edit, :show]
  def index
    @bounties = Bounty.all
  end

  def new
    @bounty = Bounty.new
    authorize @bounty
  end

  def create
    raise
  end

  def show
    authorize @bounty
  end

  def edit
  end


  private

  def bounties_params
    params.require(:bounty).permit(:content, :price_cents, :github_repo)
  end

  def set_bounty
    @bounty = Bounty.find(params[:id])
  end
end
