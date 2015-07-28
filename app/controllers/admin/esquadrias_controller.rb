class Admin::EsquadriasController < Admin::BaseController
  before_action :set_esquadria, only: [:show, :edit, :update, :destroy]

  def index
    @esquadrias = Esquadria.all
    respond_with(@esquadrias)
  end

  def show
    respond_with(@esquadria)
  end

  def new
    @esquadria = Esquadria.new
    respond_with @esquadria
  end

  def edit
  end

  def create
    @esquadria = Esquadria.new(esquadria_params)
    @esquadria.save
    respond_with @esquadria, location: -> { admin_esquadrias_path }
  end

  def update
    @esquadria.update(esquadria_params)
    respond_with @esquadria, location: -> { admin_esquadria_path(@esquadria) }
  end

  def destroy
    @esquadria.destroy
    respond_with @esquadria, location: -> { admin_esquadrias_path }
  end

  private
    def set_esquadria
      @esquadria = Esquadria.find(params[:id])
    end

    def esquadria_params
      params.require(:esquadria).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @esquadria.descricao }
    end
end
