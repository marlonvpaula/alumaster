class Admin::ClientesController < Admin::BaseController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  def index
    @clientes = Cliente.all
    respond_with(@clientes)
  end

  def show
    respond_with(@cliente)
  end

  def new
    @cliente = Cliente.new
    respond_with @cliente
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.save
    respond_with @cliente, location: -> { admin_clientes_path }
  end

  def update
    @cliente.update(cliente_params)
    respond_with @cliente, location: -> { admin_cliente_path(@cliente) }
  end

  def destroy
    @cliente.destroy
    respond_with @cliente, location: -> { admin_clientes_path }
  end

  private
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:nome, :tema, :fone,
        :celular, :cep, :endereco, :numero, :complemento, :bairro, 
        :cidade, :estado, :email, :sobrempresa, :servicos)
    end

    def interpolation_options
      { resource_name: @cliente.nome }
    end
end
