class Admin::AdminMenusController < ApplicationController
  # GET /admin/admin_menus
  # GET /admin/admin_menus.json
  def index
    @admin_admin_menus = Admin::AdminMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_admin_menus }
    end
  end

  # GET /admin/admin_menus/1
  # GET /admin/admin_menus/1.json
  def show
    @admin_admin_menu = Admin::AdminMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_admin_menu }
    end
  end

  # GET /admin/admin_menus/new
  # GET /admin/admin_menus/new.json
  def new
    @admin_admin_menu = Admin::AdminMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_admin_menu }
    end
  end

  # GET /admin/admin_menus/1/edit
  def edit
    @admin_admin_menu = Admin::AdminMenu.find(params[:id])
  end

  # POST /admin/admin_menus
  # POST /admin/admin_menus.json
  def create
    @admin_admin_menu = Admin::AdminMenu.new(params[:admin_admin_menu])

    respond_to do |format|
      if @admin_admin_menu.save
        format.html { redirect_to @admin_admin_menu, notice: 'Admin menu was successfully created.' }
        format.json { render json: @admin_admin_menu, status: :created, location: @admin_admin_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/admin_menus/1
  # PUT /admin/admin_menus/1.json
  def update
    @admin_admin_menu = Admin::AdminMenu.find(params[:id])

    respond_to do |format|
      if @admin_admin_menu.update_attributes(params[:admin_admin_menu])
        format.html { redirect_to @admin_admin_menu, notice: 'Admin menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/admin_menus/1
  # DELETE /admin/admin_menus/1.json
  def destroy
    @admin_admin_menu = Admin::AdminMenu.find(params[:id])
    @admin_admin_menu.destroy

    respond_to do |format|
      format.html { redirect_to admin_admin_menus_url }
      format.json { head :no_content }
    end
  end
end
