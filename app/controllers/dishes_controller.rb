class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  def create
  end
end
