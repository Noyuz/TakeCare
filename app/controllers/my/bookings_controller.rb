class My::BookingsController < ApplicationController
  def index
    @rents = current_user.rents
  end
end
