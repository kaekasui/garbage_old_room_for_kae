class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :title
  before_filter :side_menu
  before_filter :current_version

  # セッション有効期限延長
  before_filter :reset_session_expires

  private

  def title
    @title = I18n.t("title.top")
  end

  def side_menu
    @menus = Menu.find_all_by_disable(true)
  end

  def current_version
    @current_version = Version.current_version
  end

  #-----------------------#
  # reset_session_expires #
  #-----------------------#
  # セッション期限延長
  def reset_session_expires
    request.session_options[:expire_after] = 2.weeks
  end

  #--------------#
  # current_user #
  #--------------#
  def current_user
    @current_user ||= User.where( id: session[:user_id] ).first
  end
  
  helper_method :current_user


end
