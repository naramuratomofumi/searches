class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    @like.destroy 
    redirect_back(fallback_location: root_path)
  end
end
