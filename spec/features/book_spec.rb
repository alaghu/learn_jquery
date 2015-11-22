require 'rails_helper'

describe 'Book page, which does not exist' do
  it 'should direct to selector for now since there is no index page' do
    visit '/book'

    expect(page).to have_content 'Selected Shakespeare Plays'
  end
end

# Intro
describe 'book intro page' do
  it 'should have content about Looking-Glass' do
    visit '/book/intro'

    expect(page).to have_content 'Through the Looking-Glass'
  end

  it 'should be accessible from home page' do
    visit '/'
    click_on 'Can you book my intro?'

    expect(page).to have_content 'Through the Looking-Glass'
  end

  it 'should not have JavaScript errors', js: true do
    visit '/'
    click_on 'Can you book my intro?'

    expect(page).to_not have_errors
  end
end

# Selector
describe 'Book selector page' do
  it 'should have content about shakespear' do
    visit '/book/selector'

    expect(page).to have_content 'Selected Shakespeare Plays'
    # TODO: Find a specific css property to differentiate with my selector css.
  end

  it 'should be accessible from home page' do
    visit '/'
    click_on 'A selection of books!'

    expect(page).to have_content 'Selected Shakespeare Plays'
  end
end
