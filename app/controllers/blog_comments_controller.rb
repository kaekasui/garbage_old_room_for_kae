class BlogCommentsController < ApplicationController

  def confirm
    @blog_comment = BlogComment.new(params[:blog_comment])
  end

  # POST /blog_comments
  # POST /blog_comments.json
  def create
    @blog_comment = BlogComment.new(params[:blog_comment])
    @blog_comment.update_attributes(blog_id: params[:blog_id], ip: request.remote_ip)

    respond_to do |format|
      if @blog_comment.save
        format.html { redirect_to blog_path(@blog_comment.blog_id), notice: 'Blog comment was successfully created.' }
        format.json { render json: @blog_comment, status: :created, location: @blog_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end 
    end 
  end

  # GET /blog_comments/1/edit
  def edit
    @blog_comment = BlogComment.find(params[:id])
  end

  # PUT /blog_comments/1
  # PUT /blog_comments/1.json
  def update
    @blog_comment = BlogComment.find(params[:id])

    respond_to do |format|
      if @blog_comment.update_attributes(params[:blog_comment])
        format.html { redirect_to @blog_comment, notice: 'Blog comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.json
  def destroy
    @blog_comment = BlogComment.find(params[:id])
    @blog_comment.destroy

    respond_to do |format|
      format.html { redirect_to blog_comments_url }
      format.json { head :ok }
    end
  end
end
