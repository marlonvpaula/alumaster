class Admin::PerfilsController < Admin::BaseController
  before_action :set_perfil, only: [:show, :edit, :update, :destroy]

  def index
    @perfils = Perfil.all
    respond_with(@perfils)
  end

  def show
    respond_with(@perfil)
  end

  def new
    @perfil = Perfil.new
    respond_with @perfil
  end

  def edit
  end

  def create
    @perfil = Perfil.new(perfil_params)
    @perfil.save
    respond_with @perfil, location: -> { admin_perfils_path }
  end

  def update
    @perfil.update(perfil_params)
    respond_with @perfil, location: -> { admin_perfil_path(@perfil) }
  end

  def destroy
    @perfil.destroy
    respond_with @perfil, location: -> { admin_perfils_path }
  end

  private
    def set_perfil
      @perfil = Perfil.find(params[:id])
    end

    def perfil_params
      params.require(:perfil).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @perfil.descricao }
    end
end
