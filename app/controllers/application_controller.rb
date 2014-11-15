class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :ensure_valid_session

  def resolve(key)
    Spank::IOC.resolve(key)
  end

  def current_user
    @current_user ||= @current_session.user
  end

  private

  def ensure_valid_session(user_session_id = cookies.signed[:raphael])
    unless @current_session = Session.find(user_session_id)
      redirect_to new_session_path
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to new_session_path
  end
end
