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

  private

  def user_params
    params.require(:user).permit(:profile_photo)
  end
end
