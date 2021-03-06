class PrototypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prototype, only: [:show, :edit, :destroy]
  before_action :redirect_root, only: [:edit, :destroy]

  def index
    @prototypes = Prototype.all.order('created_at DESC')
    @like_rank = Prototype.find(Like.group(:prototype_id).order('count(prototype_id) desc').pluck(:prototype_id))
    @q = Prototype.ransack(params[:q])
    @prototype = @q.result
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    # @prototype.user_id = current_user.id
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @like = Like.new
  end

  def edit
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to prototype_path
    else
      render :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:image, :season_id, :main_tops_col_id, :main_tops_category_id, :tops_category_id,
                                      :tops_col_id, :bottom_category_id, :bottom_col_id, :acc_category_id, :acc_col_id, :text).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def redirect_root
    redirect_to root_path unless current_user.id == @prototype.user_id
  end
end
