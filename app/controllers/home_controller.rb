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
		# puts @contato.inspect
		# puts "_______________________________________"
		# puts params.inspect
		if @contato.save 
			ContatoMailer.confirm_email(@contato).deliver()
			@flagContact = true;
			flash[:notice] = ["Sua mensagem foi enviada com sucesso.","Entraremos em contato assim que possivel."]
		  #flash[:notice].join("<br>")
			#flash[:notice] << 
			# flash[:notice] = 'Sua mensagem foi enviada com sucesso. ' + chr(13) + 'Entraremos em contato assim que possivel.'
			# redirect_to root_path, notice: "Sua mensagem foi enviada."

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
			flash[:error] = 'Erros foram encontrados'
			flash[:notice] = nil
 			render :index
		end
	end


    private

    def contato_params
      params.require(:contato).permit(:name, :phone, :email, :message)
    end
end