class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

   def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @grandmas = Grandma.all
    @grandma = Grandma.find(params[:grandma_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @grandma = Grandma.find(params[:grandma_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.grandma = @grandma

    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :date)
  end
end
