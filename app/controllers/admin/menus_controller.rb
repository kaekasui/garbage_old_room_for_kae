class Admin::MenusController < ApplicationController
  # GET /admin/menus
  # GET /admin/menus.json
  def index
    @admin_menus = Admin::Menu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_menus }
    end
  end

  # GET /admin/menus/1
  # GET /admin/menus/1.json
  def show
    @admin_menu = Admin::Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_menu }
    end
  end

  # GET /admin/menus/new
  # GET /admin/menus/new.json
  def new
    @admin_menu = Admin::Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_menu }
    end
  end

  # GET /admin/menus/1/edit
  def edit
    @admin_menu = Admin::Menu.find(params[:id])
  end

  # POST /admin/menus
  # POST /admin/menus.json
  def create
    @admin_menu = Admin::Menu.new(params[:admin_menu])

    respond_to do |format|
      if @admin_menu.save
        format.html { redirect_to @admin_menu, notice: 'Menu was successfully created.' }
        format.json { render json: @admin_menu, status: :created, location: @admin_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/menus/1
  # PUT /admin/menus/1.json
  def update
    @admin_menu = Admin::Menu.find(params[:id])

    respond_to do |format|
      if @admin_menu.update_attributes(params[:admin_menu])
        format.html { redirect_to @admin_menu, notice: 'Menu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/menus/1
  # DELETE /admin/menus/1.json
  def destroy
    @admin_menu = Admin::Menu.find(params[:id])
    @admin_menu.destroy

    respond_to do |format|
      format.html { redirect_to admin_menus_url }
      format.json { head :ok }
    end
  end
end
