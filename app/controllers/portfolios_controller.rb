class PortfoliosController < ApplicationController
  before_action :portfolio_find, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.all.by_position
  end

  def sort
    params[:order].each do |k,v|
      Portfolio.find(v[:id]).update(position: v[:position])
    end

    render nothing: true
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
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
      params.require(:portfolio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes: [:name])
    end

    def portfolio_find
      @portfolio_item = Portfolio.find(params[:id])
    end

end
