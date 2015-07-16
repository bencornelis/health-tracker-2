class AddFoodAndCaloriesColumnToMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :food_id
    add_column :meals, :food_name, :string
    add_column :meals, :calories, :integer
  end
end
