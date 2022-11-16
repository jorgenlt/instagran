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
    @grandma = Grandma.new(grandma_params)


    if @grandma.save
      # redirect_to grandma_path(@grandma.id)
      redirect_to root_path
    else
      flash.alert = "Error! Grandma was not created."
    end
  end

  def destroy
  end






  private

  def grandma_params
    params.require(:grandma).permit(:first_name, :last_name, :address, :description)
  end
end
