class AddCountryColumnToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :country, :string 
  end
end
