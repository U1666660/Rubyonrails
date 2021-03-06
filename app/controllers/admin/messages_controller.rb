class Admin::MessagesController < Admin::ApplicationController
  def index
     if params[:search].present?
       @messages = Message.matching_fullname_or_content(params[:search]).paginate(:page => params[:page], :per_page => 10)

    else
    @messages = Message.all.order(id: :desc).paginate(:page => params[:page], :per_page => 10)
end
  end

  def show
    @message = Message.find(params[:id])
    @message.mark_read
  end

  def update
    @message = Message.find(params[:id])
    @message.update(status: params[:status])
    redirect_to :back, notice: 'Successfully updated message'


  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to :back, notice: 'Message was successfully deleted'


  end
end
