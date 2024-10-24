class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :data_not_found
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def data_not_found
    redirect_to static_pages_data_not_found_path
  end

  def route_not_found
    redirect_to static_pages_page_not_found_path
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

end
