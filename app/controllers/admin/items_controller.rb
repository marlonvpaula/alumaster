class Admin::ItemsController < Admin::BaseController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with @item
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with @item, location: -> { admin_items_path }
  end

  def update
    @item.update(item_params)
    respond_with @item, location: -> { admin_item_path(@item) }
  end

  def destroy
    @item.destroy
    respond_with @item, location: -> { admin_items_path }
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:descricao)
    end

    def interpolation_options
      { resource_name: @item.descricao }
    end
end
