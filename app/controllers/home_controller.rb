class HomeController < ApplicationController
	def index
		@cliente = Cliente.first

		@portfolios = Portfolio.includes(:photos)
		@photo = nil

		@contato = Contato.new
	end

  private

    def contato_params
      params.require(:contato).permit(:name, :telefone, :email, :message)
    end
end