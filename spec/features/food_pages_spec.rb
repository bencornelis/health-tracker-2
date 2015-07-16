require "rails_helper"

describe "food consumed entry" do
  it "add food consumed entry to health tracker", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    chicken = FactoryGirl.create(:chicken)
    visit '/'
    click_on 'Enter Meal'
    select 'chicken'
    click_on 'Add meal'
    expect(page).to have_content '120'
  end
end
