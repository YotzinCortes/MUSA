class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected

  def real_remote_ip
    (request.env['HTTP_X_REAL_IP'] || request.env['HTTP_X_FORWARDED_FOR'] || request.env['REMOTE_ADDR']).split(', ').last
  end
end
