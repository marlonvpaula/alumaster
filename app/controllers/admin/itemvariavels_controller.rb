class Admin::ItemvariavelsController < Admin::BaseController
  before_action :set_itemvariavel, only: [:show, :edit, :update, :destroy]

  def index
    @itemvariavels = Itemvariavel.all
    respond_with(@itemvariavels)
  end

  def show
    respond_with(@itemvariavel)

  end

  def new
    @itemvariavel = Itemvariavel.new
    respond_with @itemvariavel
  end

  def edit
  end

  def create
    @itemvariavel = Itemvariavel.new(itemvariavel_params)
    @itemvariavel.save
    respond_with @itemvariavel, location: -> { admin_itemvariavels_path }
  end

  def update
    @item.update(itemvariavel_params)
    respond_with @itemvariavel, location: -> { admin_itemvariavel_path(@itemvariavel) }
  end

  def destroy
    @itemvariavel.destroy
    respond_with @itemvariavel, location: -> { admin_itemvariavels_path }
  end

  private
    def set_itemvariavel
      @itemvariavel = Itemvariavel.find(params[:id])
    end

    def itemvariavel_params
      params.require(:itemvariavel).permit(:item_id, :variavel_id, :quantidade)
    end

    def interpolation_options
      { resource_name: @itemvariavel.quantidade }
    end
end
