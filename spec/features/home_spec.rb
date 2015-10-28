require 'rails_helper'

RSpec.describe 'Home page' do
  it 'should have content from each line' do
    header = 'Me Learning JQuery'
    line_1 = 'Opal'
    line_2 = 'A selection of books!'
    all_the_contents = [header, line_1, line_2]

    visit '/'

    all_the_contents.each do |content|
      expect(page).to have_content(content)
    end
  end
end
