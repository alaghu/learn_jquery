require 'rails_helper'

RSpec.describe "home page"  do
  it "displays the user's username after successful login" do

    visit "/"


    expect(page).to have_content('Me Learning JQuery')
  end
end