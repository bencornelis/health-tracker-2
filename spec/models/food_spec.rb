require "rails_helper"

describe Food do
  it { should have_many :users }
end
