class HomeController < ApplicationController
	def index
		@cliente = Cliente.first

		@portfolios = Portfolio.includes(:photos).take(6)
		@photo = nil

		@contato = Contato.new
	end

	def submit_contato
		@contato = Contato.new(contato_params)
		# puts @contato.inspect
		# puts "_______________________________________"
		# puts params.inspect
		if @contato.save 
			ContatoMailer.confirm_email(@contato).deliver()
			redirect_to root_path, notice: "Sua mensagem foi enviada."
		else
			@cliente = Cliente.first

			@portfolios = Portfolio.includes(:photos)
			@photo = nil
 			render :index
		end
	end

	def google811a3f53f2c97834
		@cliente = Cliente.first
	end

    private

    def contato_params
      params.require(:contato).permit(:name, :phone, :email, :message)
    end
end