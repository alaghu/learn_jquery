require 'rails_helper'

describe 'Book selector page' do
  it 'should have content about shakespear' do
    visit '/book/selector'

    expect(page).to have_content 'Selected Shakespeare Plays'
    # TODO: Find a specific css property to differentiate with my selector css.
  end
end

describe 'Book page' do
  it 'should direct to selector' do
    visit '/book'

    expect(page).to have_content 'Selected Shakespeare Plays'
    # TODO: Find a specific css property to differentiate with my selector css.
  end
end
