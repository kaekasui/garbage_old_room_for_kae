class Admin::AccessCountsController < ApplicationController
  before_filter :admin_menu_name

  # GET /admin/access_counts
  # GET /admin/access_counts.json
  def index
    @admin_access_counts = Admin::AccessCount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_access_counts }
    end
  end

  private

  def admin_menu_name
    @admin_menu_name = AdminMenu.find(1).title
    @admin_tab_menus = AdminMenu.find_all_by_admin_menu_id(1)
  end
end
