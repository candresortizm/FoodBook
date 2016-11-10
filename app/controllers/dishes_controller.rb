class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to static_pages_index
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :origin)
  end

end
