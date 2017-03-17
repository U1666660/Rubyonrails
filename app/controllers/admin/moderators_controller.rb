class Admin::ModeratorsController < ApplicationController
  def show
    @moderators = Moderator.all
  end

  def edit
    @moderator = Moderator.find(params[:id])
  end

  def update
    @moderator = Moderator.find(params[:id])
    if @moderator.update(moderator_params)
      flash[:notice] = "Moderator was successfully updated"
      redirect_to admin_moderator_url
    else
      flash[:alert] = "There was a problem updating moderator"
      render 'edit'
  end
end

  private

  def moderator_params
    params.require(:moderator).permit(:id, :fullname, :username, :password)
    # Tips 4.5 Strong Parameters http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
  end

end
