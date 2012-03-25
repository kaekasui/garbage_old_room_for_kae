class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :side_menu
  before_filter :current_version

  private

  def side_menu
    @menus = Menu.find_all_by_disable(true)
  end

  def current_version
    @current_version = Version.current_version
  end
end
