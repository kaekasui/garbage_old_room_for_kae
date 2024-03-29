class Admin::VersionsController < ApplicationController
  before_filter :admin_menu_name

  # GET /admin/versions
  # GET /admin/versions.json
  def index
    @admin_versions = Admin::Version.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_versions }
    end
  end

  # GET /admin/versions/new
  # GET /admin/versions/new.json
  def new
    @admin_version = Admin::Version.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_version }
    end
  end

  # GET /admin/versions/1/edit
  def edit
    @admin_version = Admin::Version.find(params[:id])
  end

  # POST /admin/versions
  # POST /admin/versions.json
  def create
    @admin_version = Admin::Version.new(params[:admin_version])

    respond_to do |format|
      if @admin_version.save
        format.html { redirect_to @admin_version, notice: 'Version was successfully created.' }
        format.json { render json: @admin_version, status: :created, location: @admin_version }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/versions/1
  # PUT /admin/versions/1.json
  def update
    @admin_version = Admin::Version.find(params[:id])

    respond_to do |format|
      if @admin_version.update_attributes(params[:admin_version])
        format.html { redirect_to @admin_version, notice: 'Version was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/versions/1
  # DELETE /admin/versions/1.json
  def destroy
    @admin_version = Admin::Version.find(params[:id])
    #@admin_version.destroy

    respond_to do |format|
      if @admin_version.update_attributes(deleted_at: Time.now)
        format.html { redirect_to admin_versions_url, notice: 'Version was successfully deleted.' }
        format.json { head :ok }
      else
        format.html { render action: "delete" }
        format.json { render json: @admin_version.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def admin_menu_name
    @admin_menu_name = AdminMenu.find(10).title
    @admin_tab_menus = AdminMenu.find_all_by_admin_menu_id(9)
  end
end
