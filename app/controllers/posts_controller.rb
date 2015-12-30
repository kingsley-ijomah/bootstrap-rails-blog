class PostsController < ApplicationController
  def index
    @posts = Post.where(publish: true).order(id: :desc).page(params[:page]).per(Setting.post_per_page)
  end

  def show
  end
end
