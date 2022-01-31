class UsersController < ApplicationController
  def show
    @prototypes = current_user.prototypes.order('created_at DESC')
    @user = current_user
  end
end
