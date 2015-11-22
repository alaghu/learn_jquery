require 'rails_helper'
# Due to issue#14 (https://github.com/alaghu/learn_jquery/issues/14)
# refactored all the js related cases to a separate file.

# Selector
describe 'Book selector page' do
  it 'should not have JavaScript errors', js: true do
    visit '/'
    click_on 'A selection of books!'

    expect(page).to_not have_errors
  end
end
