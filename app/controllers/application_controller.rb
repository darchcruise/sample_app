class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #Force signout to prevent CSRF attacks
  def handle_univerified_request
    sign_out
    super
  end
end
