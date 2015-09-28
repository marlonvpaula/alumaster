class Admin::PhotosController < Admin::BaseController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  autocomplete :portfolio, :title, :extra_data => [:id]

  def index
    @photos = Photo.all
    respond_with(@photos)
  end

  def show
    respond_with(@photo)
  end

  def new
    @photo = Photo.new
    respond_with @photo
  end

  def edit
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    respond_with @photo, location: -> { admin_photos_path }
  end

  def update
    @photo.update(photo_params)
    respond_with @photo, location: -> { admin_photo_path(@photo) }
  end

  def destroy
    @photo.destroy
    respond_with @photo, location: -> { admin_photos_path }
  end

  private
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:portfolio_id, :picture)
    end

    def interpolation_options
      { resource_name: @photo.portfolio.title }
    end
end
