require 'rails_helper'

# Due to issue#14 (https://github.com/alaghu/learn_jquery/issues/14)
# refactored all the js related cases to a separate file.
RSpec.describe 'Home page' do
  it 'should not have JavaScript errors', js: true do
    visit(root_path)
    expect(page).to_not have_errors
  end
end

# `failure_message_for_should_not` is deprecated. Use
# `failure_message_when_negated` instead.
# Called from /Users/Anand/.rvm/gems/ruby-2.2.3/gems/
# capybara-webkit-1.7.1/lib/capybara/webkit/matchers.rb:14:in
# `block in <module:RspecMatchers>'.
