class LikesController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @prototype = Prototype.find(params[:prototype_id])
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
