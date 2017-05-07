class PostsController < ApplicationController
  def index

      if params[:tag]
        @posts = Post.filter_by_tags(params[:tag]).paginate(:page => params[:page], :per_page => (Setting.post_per_page) )

    else
    @posts = Post.where(publish: true).order(id: :desc).paginate(:page => params[:page], :per_page => (Setting.post_per_page) )
  end
  end

  def show
  end
end
