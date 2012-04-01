class TopController < ApplicationController
  before_filter :menu_name

  def index
    @updated_informations = UpdatedInformation.no_draft.limit3
    respond_to {|format| format.html}
  end

  private

  def menu_name
    @menu_name = Menu.menu_name(1) if Menu.menu_name(1)
  end
end
