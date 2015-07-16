class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals

  def search(search_term, search_day)
    search_term = nil if search_term == ""
    search_day = nil if search_day == ""
    if search_term && search_day
      meals.where('food_name LIKE ? AND DATE(date) = ?', "%#{search_term}%", search_day)
    elsif search_term
      meals.where('food_name LIKE ?', "%#{search_term}%")
    elsif search_day
      meals.where('DATE(date) = ?', search_day)
    else
      meals
    end
  end
end
