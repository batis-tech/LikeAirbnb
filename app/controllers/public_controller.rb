class PublicController < ApplicationController
  def main
    if account_signed_in?
      path = current_account.admin? ? accounts_path : dashboard_path
      redirect_to dashboard_path, flash: { success: "Successfully signed in. Welcome to Likair!" } and return
    end
    @property = Property.latest
  end
end
