class Admin::SideMenusController < ApplicationController
  # GET /admin/side_menus
  # GET /admin/side_menus.json
  def index
    @admin_side_menus = Admin::SideMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_side_menus }
    end
  end

  # GET /admin/side_menus/1
  # GET /admin/side_menus/1.json
  def show
    @admin_side_menu = Admin::SideMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_side_menu }
    end
  end

  # GET /admin/side_menus/new
  # GET /admin/side_menus/new.json
  def new
    @admin_side_menu = Admin::SideMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_side_menu }
    end
  end

  # GET /admin/side_menus/1/edit
  def edit
    @admin_side_menu = Admin::SideMenu.find(params[:id])
  end

  # POST /admin/side_menus
  # POST /admin/side_menus.json
  def create
    @admin_side_menu = Admin::SideMenu.new(params[:admin_side_menu])

    respond_to do |format|
      if @admin_side_menu.save
        format.html { redirect_to @admin_side_menu, notice: 'Side menu was successfully created.' }
        format.json { render json: @admin_side_menu, status: :created, location: @admin_side_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_side_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/side_menus/1
  # PUT /admin/side_menus/1.json
  def update
    @admin_side_menu = Admin::SideMenu.find(params[:id])

    respond_to do |format|
      if @admin_side_menu.update_attributes(params[:admin_side_menu])
        format.html { redirect_to @admin_side_menu, notice: 'Side menu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_side_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/side_menus/1
  # DELETE /admin/side_menus/1.json
  def destroy
    @admin_side_menu = Admin::SideMenu.find(params[:id])
    @admin_side_menu.destroy

    respond_to do |format|
      format.html { redirect_to admin_side_menus_url }
      format.json { head :ok }
    end
  end
end
