class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, flash: { success: "Successfully signed in. Welcome to Likair!" } and return
    end
    @property = Property.latest
  end
end
