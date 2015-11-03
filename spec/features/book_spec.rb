require 'rails_helper'

describe 'Book page, which does not exist' do
  it 'should direct to selector for now since there is no index page' do
    visit '/book'

    expect(page).to have_content 'Selected Shakespeare Plays'
  end
end

describe 'Book selector page' do
  it 'should have content about shakespear' do
    visit '/book/selector'

    expect(page).to have_content 'Selected Shakespeare Plays'
    # TODO: Find a specific css property to differentiate with my selector css.
  end

  it 'should accessible from home page' do
    visit '/'
    click_on 'A selection of books!'

    expect(page).to have_content 'Selected Shakespeare Plays'
  end
end
