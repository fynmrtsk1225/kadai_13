class RoomIdeasController < ApplicationController
  before_action :set_room_idea, only: [:show, :edit, :update, :destroy]

  # GET /room_ideas
  def index
    @room_ideas = RoomIdea.all
  end

  # GET /room_ideas/1
  def show
  end

  # GET /room_ideas/new
  def new
    @room_idea = RoomIdea.new
  end

  # GET /room_ideas/1/edit
  def edit
  end

  # POST /room_ideas
  def create
    @room_idea = RoomIdea.new(room_idea_params)
    @room_idea.user_id = current_user.id

    if @room_idea.save
      redirect_to @room_idea, notice: 'Room idea was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /room_ideas/1
  def update
    if @room_idea.update(room_idea_params)
      redirect_to @room_idea, notice: 'Room idea was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /room_ideas/1
  def destroy
    @room_idea.destroy
    redirect_to room_ideas_url, notice: 'Room idea was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_idea
      @room_idea = RoomIdea.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_idea_params
      params.require(:room_idea).permit(:name, :color, :width, :depth, :height, :image, :image_cache, :content)
    end
end
