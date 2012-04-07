class Admin::AdminUsersController < ApplicationController
  # GET /admin/admin_users
  # GET /admin/admin_users.json
  def index
    @admin_admin_users = Admin::AdminUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_admin_users }
    end
  end

  # GET /admin/admin_users/1
  # GET /admin/admin_users/1.json
  def show
    @admin_admin_user = Admin::AdminUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_admin_user }
    end
  end

  # GET /admin/admin_users/new
  # GET /admin/admin_users/new.json
  def new
    @admin_admin_user = Admin::AdminUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_admin_user }
    end
  end

  # GET /admin/admin_users/1/edit
  def edit
    @admin_admin_user = Admin::AdminUser.find(params[:id])
  end

  # POST /admin/admin_users
  # POST /admin/admin_users.json
  def create
    @admin_admin_user = Admin::AdminUser.new(params[:admin_admin_user])

    respond_to do |format|
      if @admin_admin_user.save
        format.html { redirect_to @admin_admin_user, notice: 'Admin user was successfully created.' }
        format.json { render json: @admin_admin_user, status: :created, location: @admin_admin_user }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/admin_users/1
  # PUT /admin/admin_users/1.json
  def update
    @admin_admin_user = Admin::AdminUser.find(params[:id])

    respond_to do |format|
      if @admin_admin_user.update_attributes(params[:admin_admin_user])
        format.html { redirect_to @admin_admin_user, notice: 'Admin user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/admin_users/1
  # DELETE /admin/admin_users/1.json
  def destroy
    @admin_admin_user = Admin::AdminUser.find(params[:id])
    @admin_admin_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_admin_users_url }
      format.json { head :no_content }
    end
  end
end
