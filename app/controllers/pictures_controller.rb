class PicturesController < ApplicationController
  before_action :sign_in_required
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
    @picture_tags = @picture.picture_tags.build # @pictureを使って中間テーブルであるpicture_tagsをbuild
  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures
  def create
    @picture = Picture.new(picture_params) # パラメータにnewした内容が入っているので同時保存できる
    @picture.user_id = current_user.id

    if @picture.picture_tags.blank? == false
      if @picture.save
        redirect_to @picture, notice: '新規投稿されました！'
      else
        render :new
      end
    else
      @picture.errors.add(:base, 'タグを1つ以上つけてください')
      render :new
    end
  end

  # PATCH/PUT /pictures/1
  def update
    if @picture.update(picture_params)
      redirect_to @picture, notice: '投稿が更新されました！'
    else
      render :edit
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture.destroy
    redirect_to user_path(current_user.id), notice: '投稿が削除されました！'
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
    @pictures = @picture_q.result.includes(:tags).order("id DESC")
  end

  def picture_params
    params.require(:picture).permit(:image, :image_cache, :content,
                                    products_attributes: [:id, :picture_id, :name, :product_url, :image_url, :image, :image_cache, :_destroy],
                                    picture_tags_attributes: [:id, :tag_id, :_destroy] #　アソシエーションを組んだモデルのパラメータ設定
    )
  end
end
