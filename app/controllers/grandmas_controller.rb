class GrandmasController < ApplicationController
  def index
  end

  def show
    @grandma = Grandma.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
