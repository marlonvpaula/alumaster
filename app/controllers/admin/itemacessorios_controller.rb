class Admin::ItemacessoriosController < Admin::BaseController
  before_action :set_itemacessorio, only: [:show, :edit, :update, :destroy]

  def index
    @itemacessorios = Itemacessorio.all
    respond_with(@itemacessorios)
  end

  def show
    respond_with(@itemacessorio)

  end

  def new
    @itemacessorio = Itemacessorio.new
    respond_with @itemacessorio
  end

  def edit
  end

  def create
    @itemacessorio = Itemacessorio.new(itemacessorio_params)
    @itemacessorio.save
    respond_with @itemacessorio, location: -> { admin_itemacessorios_path }
  end

  def update
    @item.update(itemacessorio_params)
    respond_with @itemacessorio, location: -> { admin_itemacessorio_path(@itemacessorio) }
  end

  def destroy
    @itemacessorio.destroy
    respond_with @itemacessorio, location: -> { admin_itemacessorios_path }
  end

  private
    def set_itemacessorio
      @itemacessorio = Itemacessorio.find(params[:id])
    end

    def itemacessorio_params
      params.require(:itemacessorio).permit(:item_id, :acessorio_id, :quantidade)
    end

    def interpolation_options
      { resource_name: @itemacessorio.quantidade }
    end
end
