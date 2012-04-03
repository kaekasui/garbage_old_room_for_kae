class UpdatedInformationsController < ApplicationController
  before_filter :menu_name

  # GET /updated_informations
  # GET /updated_informations.json
  def index
    @updated_informations = UpdatedInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @updated_informations }
    end
  end

  # GET /updated_informations/1
  # GET /updated_informations/1.json
  def show
    @updated_information = UpdatedInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @updated_information }
    end
  end

  private

  def menu_name
    @menu_name = Menu.menu_name(1) if Menu.menu_name(1)
  end
end
