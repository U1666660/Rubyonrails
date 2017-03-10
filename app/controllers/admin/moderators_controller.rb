class Admin::ModeratorsController < ApplicationController
  def show
    @moderators = Moderator.all
  end

  def edit
    @moderator = Moderator.find(params[:id])
  end

  def update
  end

end
