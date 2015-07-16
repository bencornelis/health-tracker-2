class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.column :food, :string
      t.column :calories, :integer
      
      t.timestamps
    end
  end
end
