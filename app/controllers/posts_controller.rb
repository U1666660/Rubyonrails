class PostsController < ApplicationController
  def index
    @posts = Post.where(publish: true).order(id: :desc).paginate(:page => params[:page], :per_page => (Setting.post_per_page) )
  end

  def show
  end
end
