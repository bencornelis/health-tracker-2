class HomeController < ApplicationController
  def index
    # binding.pry
    if user_signed_in?
      @meals = current_user.search_foods(params[:search]).order(sort + " " + direction).paginate(:per_page => 5, :page => params[:page])
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
