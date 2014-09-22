class HomepagesController < ApplicationController
  def index
  end

  def join
    beta_user = BetaUser.find_by_email(params[:email])
    session[:registered] = beta_user.present?
    beta_user = BetaUser.create(email: params[:email], ip: real_remote_ip) unless beta_user.present?
    session[:user_id] = beta_user.id
    redirect_to '/thanks'
  end

  def thanks
    @beta_user = BetaUser.find(session[:user_id])
  end
end
