class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_time_zone

  helper_method :current_account
  def current_account
    @current_account ||= Account.first
  end

  def set_time_zone
    Time.zone = current_account.time_zone if current_account
  end
end
