class MealsController < ApplicationController
  def new
    @food_names = Food.order(:food).map(&:food)
    respond_to do |format|
      format.js
    end
  end

  def create
    food = Food.where(food: params[:food]).first
    @meal = Meal.create(user_id: current_user.id,
                        food_name: food.food,
                        calories: food.calories,
                        date: params[:date],
                        country: params[:country])
    @net_calories_by_day = current_user.meals.group_by_day(:date, format: "%B %d, %Y").sum(:calories)
    @calories_by_food = current_user.meals.group(:food_name).sum(:calories)
    @meals_by_country = current_user.meals.group(:country).count

    respond_to do |format|
      format.js
    end
  end

end
