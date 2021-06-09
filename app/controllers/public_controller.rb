class PublicController < ApplicationController
  def main
    @property = Property.latest
  end
end
