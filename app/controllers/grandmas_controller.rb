class GrandmasController < ApplicationController
  def index
    @grandmas = Grandma.all
  end

  def show
    @grandma = Grandma.find(params[:id])
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
    params.require(:grandma).permit(:first_name, :last_name, :address, :description, :user_id, photo_url: [])
  end
end
