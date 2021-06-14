class DashboardController < ApplicationController
  before_action :set_sidebar

  def index
  end

  def profile
    @account = Account.find(params[:id])
  end

  private
  def set_sidebar
    @set_sidebar = true
  end
end
