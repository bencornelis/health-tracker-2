FactoryGirl.define do
  factory :user do
    email "ben@gmail.com"
    password 12345678
  end

  factory :banana, class: Food do
    food "banana"
    calories 30
  end

  factory :chicken, class: Food do
    food "chicken"
    calories 120
  end
end
