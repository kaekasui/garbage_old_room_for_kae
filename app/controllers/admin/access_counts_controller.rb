class Admin::AccessCountsController < ApplicationController
  # GET /admin/access_counts
  # GET /admin/access_counts.json
  def index
    @admin_access_counts = Admin::AccessCount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_access_counts }
    end
  end

  # GET /admin/access_counts/1
  # GET /admin/access_counts/1.json
  def show
    @admin_access_count = Admin::AccessCount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_access_count }
    end
  end

  # GET /admin/access_counts/new
  # GET /admin/access_counts/new.json
  def new
    @admin_access_count = Admin::AccessCount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_access_count }
    end
  end

  # GET /admin/access_counts/1/edit
  def edit
    @admin_access_count = Admin::AccessCount.find(params[:id])
  end

  # POST /admin/access_counts
  # POST /admin/access_counts.json
  def create
    @admin_access_count = Admin::AccessCount.new(params[:admin_access_count])

    respond_to do |format|
      if @admin_access_count.save
        format.html { redirect_to @admin_access_count, notice: 'Access count was successfully created.' }
        format.json { render json: @admin_access_count, status: :created, location: @admin_access_count }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_access_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/access_counts/1
  # PUT /admin/access_counts/1.json
  def update
    @admin_access_count = Admin::AccessCount.find(params[:id])

    respond_to do |format|
      if @admin_access_count.update_attributes(params[:admin_access_count])
        format.html { redirect_to @admin_access_count, notice: 'Access count was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_access_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/access_counts/1
  # DELETE /admin/access_counts/1.json
  def destroy
    @admin_access_count = Admin::AccessCount.find(params[:id])
    @admin_access_count.destroy

    respond_to do |format|
      format.html { redirect_to admin_access_counts_url }
      format.json { head :no_content }
    end
  end
end
