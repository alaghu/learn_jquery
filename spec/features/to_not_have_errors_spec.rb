require 'rails_helper'

describe 'Home page' do
  it 'should not have JavaScript errors', js: true do
    visit '/'

    expect(page).to_not have_errors
  end
end

# Intro
describe 'book intro page' do
  it 'should not have JavaScript errors', js: true do
    visit '/'
    click_on 'Can you book my intro?'

    expect(page).to_not have_errors
  end
end

# Selector
describe 'Book selector page' do
  it 'should not have JavaScript errors', js: true do
    visit '/'
    click_on 'A selection of books!'

    expect(page).to_not have_errors
  end
end
