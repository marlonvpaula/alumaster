class Admin::AcessoriosController < Admin::BaseController
  before_action :set_acessorio, only: [:show, :edit, :update, :destroy]

  def index
    @acessorios = Acessorio.all
    respond_with(@acessorios)
  end

  def show
    respond_with(@acessorio)
  end

  def new
    @acessorio = Acessorio.new
    respond_with @acessorio
  end

  def edit
  end

  def create
    @acessorio = Acessorio.new(acessorio_params)
    @acessorio.save
    respond_with @acessorio, location: -> { admin_acessorios_path }
  end

  def update
    @acessorio.update(acessorio_params)
    respond_with @acessorio, location: -> { admin_acessorio_path(@acessorio) }
  end

  def destroy
    @acessorio.destroy
    respond_with @acessorio, location: -> { admin_acessorios_path }
  end

  private
    def set_acessorio
      @acessorio = Acessorio.find(params[:id])
    end

    def acessorio_params
      params.require(:acessorio).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @acessorio.descricao }
    end
end
