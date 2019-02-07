require "rails_helper"

RSpec.describe "User haha", :type => :system do
  before do
    driven_by(:rack_test)

    user = create(:user)
    create(:book, user: user)

    @user_count = User.count
  end

  it "enables me to create users" do
    visit "/users/new"

    fill_in "user_name", :with => "My Writer2"
    fill_in "user_bio", :with => "User Bio2"
    click_button "创建作者"

    expect(page).to have_text("My Writer2 User Bio2")
    expect(page).to have_text("John")
    expect(User.count).to eq(@user_count + 1)
    expect(Book.first.name).to eq("TheBook name")
  end
end
