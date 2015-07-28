class Admin::VidrosController < Admin::BaseController
  before_action :set_vidro, only: [:show, :edit, :update, :destroy]

  def index
    @vidros = Vidro.all
    respond_with(@vidros)
  end

  def show
    respond_with(@vidro)
  end

  def new
    @vidro = Vidro.new
    respond_with @vidro
  end

  def edit
  end

  def create
    @vidro = Vidro.new(vidro_params)
    @vidro.save
    respond_with @vidro, location: -> { admin_vidros_path }
  end

  def update
    @vidro.update(vidro_params)
    respond_with @vidro, location: -> { admin_vidro_path(@vidro) }
  end

  def destroy
    @vidro.destroy
    respond_with @vidro, location: -> { admin_vidros_path }
  end

  private
    def set_vidro
      @vidro = Vidro.find(params[:id])
    end

    def vidro_params
      params.require(:vidro).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @vidro.descricao }
    end
end
