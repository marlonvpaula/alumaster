class PortfoliosController < ApplicationController
	def index
		@cliente = Cliente.first
		@portfolios = Portfolio.includes(:photos)
		@photo = nil

	end

	def show
		@cliente = Cliente.first
		@portfolios = Portfolio.includes(:photos)
		@portfolio = Portfolio.find(params[:id])
    respond_with(@portfolio)
  end
end