class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
  has_many :foods, through: :meals

  def search_foods(search_param)
    if search_param
      meals.joins(:food).where('food LIKE ?', "%#{search_param}%")

      # SELECT email, food, date
      # FROM USERS
      # INNER JOIN meals ON users.id = meals.user_id
      # INNER JOIN foods ON meals.food_id = foods.id
      # where food like '%#{search_param}%'
    else
      meals
    end
  end
end
