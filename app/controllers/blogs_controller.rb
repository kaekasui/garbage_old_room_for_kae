class BlogsController < ApplicationController
  before_filter :menu_name

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

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end

  private

  def menu_name
    @menu_name = Menu.menu_name(2)
  end
end
