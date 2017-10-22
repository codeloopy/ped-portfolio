class PortfoliosController < ApplicationController
  before_action :portfolio_find, only: [:edit, :update, :show, :destroy]

  def index
    @portfolios_items = Portfolio.all
    # @portfolios_items = Portfolio.ruby_on_rails #pulling angular from the model portfolio file
    # @portfolios_items = Portfolio.angular #pulling angular from the model portfolio file
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      redirect_to @portfolio_item
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolio_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end

    def portfolio_find
      @portfolio_item = Portfolio.find(params[:id])
    end

end
