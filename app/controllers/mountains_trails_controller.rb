class MountainsTrailsController < ApplicationController

  def index
    @mountain = Mountain.find(params[:mountain_id])
  end
end