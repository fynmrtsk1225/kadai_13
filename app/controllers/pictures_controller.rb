class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  # GET /pictures
  def index
    # @pictures = Picture.all
  end

  # GET /pictures/1
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
    @picture_tags = @picture.picture_tags.build    
  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures
  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id

    if @picture.save
      redirect_to @picture, notice: 'Picture was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pictures/1
  def update
    if @picture.update(picture_params)
      redirect_to @picture, notice: 'Picture was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture.destroy
    redirect_to user_path(current_user.id), notice: 'Picture was successfully destroyed.'
  end

  def search
    @results = @picture_q.result
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_picture
    @picture = Picture.find(params[:id])
  end

  def set_q
    @picture_q = Picture.ransack(params[:q])
    @tags = Tag.all
    @pictures = @picture_q.result.includes(:tags)
  end

  def picture_params
    params.require(:picture).permit(:image, :image_cache, :content,
                                    products_attributes: [:id, :picture_id, :name, :product_url, :image_url, :image, :image_cache, :_destroy],
                                    picture_tags_attributes: [:id, :tag_id, :_destroy]
    )
  end
end
