class Meal < ActiveRecord::Base
  belongs_to :food
  belongs_to :user

  def date_to_s
    if date
      date.strftime("%B %d, %Y") + " at " + date.strftime("%l:%M %p")
    end
  end
end
