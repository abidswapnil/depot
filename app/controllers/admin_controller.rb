class AdminController < ApplicationController
  before_action :current_user
  def index
    @user = @current_user
    # @total_orders = Order.count
  end
end
