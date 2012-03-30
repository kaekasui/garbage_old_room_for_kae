class BlogsController < ApplicationController

  before_filter :menu_name
  before_filter :title_blog

  # GET /blogs
  # GET /blogs.json
  def index
#    @blogs = Blog.all
    @blogs = Blog.no_draft.page(params[:page]).per(10)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    @blog_comment = BlogComment.new
    @blog_comments = @blog.blog_comments

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end

  private

  def menu_name
    @menu_name = Menu.menu_name(2)
  end

  def title_blog
    @title = @title + "-" + @menu_name + "-"
    if params[:id]
      @blog = Blog.find(params[:id])
      @blog_title = @blog.title
      @title = @title + " : " + @blog_title if @blog_title
    end
  end
end
