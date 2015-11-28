class PortfoliosController < ApplicationController
	def index
		@cliente = Cliente.first
		@portfolios = Portfolio.where('id in (select distinct (portfolio_id) from photos)').includes(:photos)
		@photo = nil

	end

	def show
		@cliente = Cliente.first
		@portfolios = Portfolio.where('id in (select distinct (portfolio_id) from photos)').includes(:photos)
		@portfolio = Portfolio.find(params[:id])
    respond_with(@portfolio)
  end
end