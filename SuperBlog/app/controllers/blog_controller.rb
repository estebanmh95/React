class BlogController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(params[:id])
  end

  def edit
    @post = Post.find_by(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to blog_path, notice: "Post was succesfully created."
    else
      render :new
    end
  end

  def update
    @post = Post.find_by(params[:id])
    if @post.update(post_params)
      redirect_to blog_path, notice: "Post was succesfully updated"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find_by(params[:id])
    @post.destroy
    redirect_to blog_path, notice: "Post was succesfully destroyed"
  end
  private
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
