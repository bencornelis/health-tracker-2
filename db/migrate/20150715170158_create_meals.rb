class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.column :user_id, :integer
      t.column :food_id, :integer

      t.timestamps
    end
  end
end
