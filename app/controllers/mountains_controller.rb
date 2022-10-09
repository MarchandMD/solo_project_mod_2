class MountainsController < ApplicationController
  def index
    @mountains = Mountain.order(created_at: :desc)
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def new
  end
end
