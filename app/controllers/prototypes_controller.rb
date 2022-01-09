class PrototypesController < ApplicationController
  before_action :authenticate_user!
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id]) 
  end

  def edit
    @prototype = Prototype.find(params[:id])
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
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end

  private
  def prototype_params
    params.require(:prototype).permit(:image, :season_id, :main_tops_col_id, :main_tops_category_id, :tops_category_id, :tops_col_id, :bottom_category_id, :bottom_col_id, :acc_category_id, :acc_col_id, :text).merge(user_id: current_user.id)
  end
end
