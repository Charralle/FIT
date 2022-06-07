class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @garments = Garment.select { |finished| finished.selected == true }
  end
end
