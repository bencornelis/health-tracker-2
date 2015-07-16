class MealsController < ApplicationController

  def create
    food = Food.where(food: params[:food]).first
    @meal = Meal.create(user_id: current_user.id, food_name: food.food, calories: food.calories, date: params[:date])
    @net_calories_by_day = current_user.meals.group_by_day(:date, format: "%B %d, %Y").sum(:calories)
    respond_to do |format|
      format.js
    end
  end

end
