class MealsController < ApplicationController

  def create
    food = Food.where(food: params[:food]).first
    binding.pry
    @meal = Meal.create(user_id: current_user.id, food_id: food.id, date: params[:date])
    binding.pry
    respond_to do |format|
      format.js
    end
  end

end
