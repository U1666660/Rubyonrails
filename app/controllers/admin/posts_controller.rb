class Admin::PostsController < Admin::ApplicationController
  def index
    if params[:search].present?
      @posts = Post.matching_title_or_content(params[:search]).paginate(:page => params[:page], :per_page => 10)
    else
    @posts = Post.paginate(:page => params[:page], :per_page => 10)
  end
end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
