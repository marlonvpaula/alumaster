class Admin::ItemvidrosController < Admin::BaseController
  before_action :set_itemvidro, only: [:show, :edit, :update, :destroy]

  def index
    @itemvidros = Itemvidro.all
    respond_with(@itemvidros)
  end

  def show
    respond_with(@itemvidro)

  end

  def new
    @itemvidro = Itemvidro.new
    respond_with @itemvidro
  end

  def edit
  end

  def create
    @itemvidro = Itemvidro.new(itemvidro_params)
    @itemvidro.save
    respond_with @itemvidro, location: -> { admin_itemvidros_path }
  end

  def update
    @item.update(itemvidro_params)
    respond_with @itemvidro, location: -> { admin_itemvidro_path(@itemvidro) }
  end

  def destroy
    @itemvidro.destroy
    respond_with @itemvidro, location: -> { admin_itemvidros_path }
  end

  private
    def set_itemvidro
      @itemvidro = Itemvidro.find(params[:id])
    end

    def itemvidro_params
      params.require(:itemvidro).permit(:item_id, :vidro_id, :quantidade)
    end

    def interpolation_options
      { resource_name: @itemvidro.quantidade }
    end
end
