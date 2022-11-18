class GrandmasController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        grandmas.first_name @@ :query
        OR grandmas.last_name @@ :query
        OR grandmas.description @@ :query
      SQL
      @grandmas = Grandma.where(sql_query, query: "%#{params[:query]}%")
    else
      @grandmas = Grandma.all
    end
    @markers = @grandmas.geocoded.map do |grandma|
      {
        lat: grandma.latitude,
        lng: grandma.longitude,
        image_url: helpers.asset_url("granny-pin.png")
      }
    end
  end

  def show
    @grandma = Grandma.find(params[:id])
    @booking = Booking.new
    @markers = Grandma.where(id: params[:id]).geocoded.map do |grandma|
      {
        lat: grandma.latitude,
        lng: grandma.longitude,
        image_url: helpers.asset_url("granny-pin.png")
      }
    end
  end

  def new
    @grandma = Grandma.new
  end

  def create
    @user = current_user
    @grandma = Grandma.new(grandma_params)
    @grandma.user = @user

    if @grandma.save
      redirect_to grandma_path(@grandma)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def grandma_params
    params.require(:grandma).permit(:first_name, :last_name, :address, :description, :user_id)
  end
end
