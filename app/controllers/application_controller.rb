class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_data
    rescue_from ActionController::RoutingError, with: :not_found
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def invalid_data
    redirect_to static_pages_not_found_path
  end

  def not_found
    redirect_to static_pages_page_not_found_path
  end

end
