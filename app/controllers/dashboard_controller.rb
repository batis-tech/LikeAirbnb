class DashboardController < ApplicationController
  before_action :set_sidebar

  def index
  end

  def profile
    @account = Account.find(params[:id])
    @properties = Property.where(account_id: @account.id)
    @properties_sold = Property.where(account_id: @account.id).sold.count
    @properties_for_sale = Property.where(account_id: @account.id).for_sale.count
    @properties_leased  = Property.where(account_id: @account.id).leased.count
    @properties_for_rent = Property.where(account_id: @account.id).for_rent.count
    @properties_agent = Property.where(account_id: @account.id).where.not(id: @property)

  end

  private
  def set_sidebar
    @set_sidebar = true
  end
end
