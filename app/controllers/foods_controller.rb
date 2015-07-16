class FoodsController < ApplicationController
  def index
  end

  def new
    @food_names = Food.order(:food).map(&:food)
    respond_to do |format|
      format.js
    end
  end
end
