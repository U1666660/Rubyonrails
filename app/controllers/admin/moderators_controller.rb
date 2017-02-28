class Admin::ModeratorsController < ApplicationController
  def show
    @moderators = Moderator.all
  end
end
