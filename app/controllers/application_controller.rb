class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :side_menu


  private

  def side_menu
    @menus = Menu.find_all_by_disable(true)
  end
end
