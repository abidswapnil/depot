class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :data_not_found
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authorize
  allow_browser versions: :modern
  before_action :set_i18n_locale_from_params
  def data_not_found
    redirect_to static_pages_data_not_found_path
  end

  def route_not_found
    redirect_to static_pages_page_not_found_path
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.map(&:to_s).include?(params[:locale])
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end
end
