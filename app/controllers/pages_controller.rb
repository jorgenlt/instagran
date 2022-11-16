class PagesController < ApplicationController
  def home
    @grandmas = Grandma.all
  end


  def components_julia
  end

  def components_alex
    @grandma = Grandma.new
  end

  def components_alexander
    @grandma = Grandma.new
  end

  def components_jorgen
  end
end
