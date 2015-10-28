require 'rails_helper'

describe 'Book page' do
  it 'should have content about shakespear' do
    visit '/book_selection'

    expect(page).to have_content('shakespeare')
  end
end
