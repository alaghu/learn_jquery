require 'rails_helper'

describe 'Book page' do
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
end


# /home/travis/build/alaghu/learn_jquery/vendor/bundle/ruby/2.2.0/gems/mysql2-0.3.18/lib/mysql2/client.rb:70:in `connect': Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2) (Mysql2::Error)
