class Admin::VariavelsController < Admin::BaseController
  before_action :set_variavel, only: [:show, :edit, :update, :destroy]

  def index
    @variavels = Variavel.all
    respond_with(@variavels)
  end

  def show
    respond_with(@variavel)
  end

  def new
    @variavel = Variavel.new
    respond_with @variavel
  end

  def edit
  end

  def create
    @variavel = Variavel.new(variavel_params)
    @variavel.save
    respond_with @variavel, location: -> { admin_variavels_path }
  end

  def update
    @variavel.update(variavel_params)
    respond_with @variavel, location: -> { admin_variavel_path(@variavel) }
  end

  def destroy
    @variavel.destroy
    respond_with @variavel, location: -> { admin_variavels_path }
  end

  private
    def set_variavel
      @variavel = Variavel.find(params[:id])
    end

    def variavel_params
      params.require(:variavel).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @variavel.descricao }
    end
end
