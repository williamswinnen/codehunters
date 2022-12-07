class BountiesController < ApplicationController
  before_action :set_bounty, only: [:edit, :show, :update]
  def index
    @bounties = policy_scope(Bounty)
    @min_price = @bounties.sort_by(&:price_cents).first.price_cents
    @max_price = @bounties.sort_by(&:price_cents).last.price_cents
    if params[:query].present?
      sql_query = <<~SQL
        bounties.title  ILIKE :query
        OR users.username ILIKE :query
      SQL
      @bounties = @bounties.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:min].present? || params[:max].present?
      sql_query = <<~SQL
        price_cents  BETWEEN :min_value AND :max_value
      SQL
      @bounties = @bounties.where(sql_query, min_value: params[:min].to_f || @min_price, max_value: params[:max].to_f||@max_price)
    end
    if params[:difficulty_level].present?
      @bounties = @bounties.where(difficulty_level: params[:difficulty_level].to_i)
    end
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
      redirect_to bounty_path(@bounty)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @message = Message.new
    @solution = Solution.new
    @solutions = @bounty.user == current_user ? Solution.where(bounty: @bounty) : current_user.solutions.where(bounty: @bounty)
    authorize @bounty
    if @bounty.github_repo.split("/")[4] == "rubyHunters"
      @github_path = "app/controllers/bounties_controller.rb"
    elsif (@repo_name != "rubyHunters")
      @github_path = @bounty.github_repo.split("/")[-3..].join("/")
      @github_name = @bounty.github_repo.split("/")[3]
      @repo_name = @bounty.github_repo.split("/")[4]
    end
    @homework = Homework.new
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
