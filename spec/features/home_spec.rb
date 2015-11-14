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

  # it 'should not have JavaScript errors', js: true do
  #   visit(root_path)
  #   expect(page).to_not have_errors
  # end
end

# `failure_message_for_should_not` is deprecated. Use
# `failure_message_when_negated` instead.
# Called from /Users/Anand/.rvm/gems/ruby-2.2.3/gems/
# capybara-webkit-1.7.1/lib/capybara/webkit/matchers.rb:14:in
# `block in <module:RspecMatchers>'.
