class PrototypesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @prototypes = Prototype.new
  end

  def create
  end
end
