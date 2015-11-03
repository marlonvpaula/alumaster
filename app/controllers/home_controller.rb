class HomeController < ApplicationController
	def index
		@cliente = Cliente.first

		@portfolios = Portfolio.includes(:photos).take(6)
		@photo = nil

		@contato = Contato.new
		@flagContact = false;
	end

	def submit_contato
		@contato = Contato.new(contato_params)
		if @contato.save 
			ContatoMailer.confirm_email(@contato).deliver()
			@flagContact = true;
			flash[:notices] = ["Sua mensagem foi enviada com sucesso.","Entraremos em contato assim que possivel."]
		  
			@cliente = Cliente.first

			@portfolios = Portfolio.includes(:photos)
			@photo = nil
			@contato = Contato.new
			@flagContact = true;

			render :index
		else
			@cliente = Cliente.first

			@portfolios = Portfolio.includes(:photos)
			@photo = nil
			@flagContact = true;

			flash[:notices] = nil
 			render :index
		end
	end


    private

    def contato_params
      params.require(:contato).permit(:name, :phone, :email, :message)
    end
end