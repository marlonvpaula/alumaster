class Admin::ItemperfilsController < Admin::BaseController
  before_action :set_itemperfil, only: [:show, :edit, :update, :destroy]

  def index
    @itemperfils = Itemperfil.all
    respond_with(@itemperfils)
  end

  def show
    respond_with(@itemperfil)

  end

  def new
    @itemperfil = Itemperfil.new
    respond_with @itemperfil
  end

  def edit
  end

  def create
    @itemperfil = Itemperfil.new(itemperfil_params)
    @itemperfil.save
    respond_with @itemperfil, location: -> { admin_itemperfils_path }
  end

  def update
    @item.update(itemperfil_params)
    respond_with @itemperfil, location: -> { admin_itemperfil_path(@itemperfil) }
  end

  def destroy
    @itemperfil.destroy
    respond_with @itemperfil, location: -> { admin_itemperfils_path }
  end

  private
    def set_itemperfil
      @itemperfil = Itemperfil.find(params[:id])
    end

    def itemperfil_params
      params.require(:itemperfil).permit(:item_id, :perfil_id, :quantidade)
    end

    def interpolation_options
      { resource_name: @itemperfil.quantidade }
    end
end
