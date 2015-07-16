class HomeController < ApplicationController
  def index
    if user_signed_in?
      @meals = current_user.search(params[:search_term], params[:search_day]).order(sort + " " + direction).paginate(:per_page => 5, :page => params[:page])
      @net_calories_by_day = current_user.meals.group_by_day(:date, format: "%B %d, %Y").sum(:calories)
      @calories_by_food = current_user.meals.group(:food_name).sum(:calories)
      @meals_by_country = @meals.group(:country).count
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def sort
    params[:sort] ||= "id"
  end

  def direction
    params[:direction] ||= "desc"
  end
end
