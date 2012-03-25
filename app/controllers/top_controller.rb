class TopController < ApplicationController
  before_filter :menu_name

  def index
    respond_to {|format| format.html}
  end

  private

  def menu_name
    @menu_name = Menu.menu_name(1)
  end
end
