class ContatosController < ApplicationController
	
	def new
		@contato = Contato.new
	end

	def create
    @contato = Contato.new(contato_params)
    @contato.request = request
    if @contato.deliver
    	
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to root_path
    else
    	
      flash.now[:error] = 'Cannot send message.'
      redirect_to root_path
    end
  end

  private

    def contato_params
      params.require(:contato).permit(:name, :telefone, :email, :message)
    end
end