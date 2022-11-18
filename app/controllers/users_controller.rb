class UsersController < ApplicationController
  def new
  end

  def show
    @user = current_user
    @grandmas = @user.grandmas
    @host_bookings = Booking.where(grandma: @grandmas)
  end

  def create
  end

  def destroy
  end
end
