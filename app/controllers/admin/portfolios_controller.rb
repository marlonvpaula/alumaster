class Admin::PortfoliosController < Admin::BaseController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolios = Portfolio.all
    respond_with(@portfolios)
  end

  def show
    @photos = @portfolio.photos.all
    respond_with(@portfolio)
  end

  def new

    @portfolio = Portfolio.new
    @photo = @portfolio.photos.build
    respond_with @portfolio
  end

  def edit
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      params[:photos]['picture'].each do |a|
        @photo = @portfolio.photos.create!(:picture => a)
      end
    end
    respond_with @portfolio, location: -> { admin_portfolios_path }
  end

  def update
    if @portfolio.update(portfolio_params)
      params[:photos]['picture'].each do |a|
        @photo = @portfolio.photos.create!(:picture => a)
      end
    end
    respond_with @portfolio, location: -> { admin_portfolio_path(@portfolio) }
  end

  def destroy
    @portfolio.destroy
    respond_with @portfolio, location: -> { admin_portfolios_path }
  end



  private
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:title, :description, photos_attributes: [:id, :portfolio_id, :picture])
    end

    def interpolation_options
      { resource_name: @portfolio.title }
    end
end
