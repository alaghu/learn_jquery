require 'rails_helper'

describe ApplicationHelper, type: :helper do
  it 'Concatenate with an underscore' do
    method_call = helper.concatenate_controller_action('Controller', 'Action')
    expect(method_call).to eq('Controller_Action')
  end

  it 'should return apple icon tags' do
    starting_tag = '<link rel="apple-touch-icon-precomposed"'\
      ' type="image/x-icon" '\
      'href="/assets/Favicon/apple-touch-icon-57x57.png" sizes="57x57" />'

    sizes = %w(57x57 60x60 72x72 76x76 114x114 120x120 144x144 152x152)

    method_call = helper.apple_icons

    expect(method_call).to start_with(starting_tag)
    expect(method_call).to include(*sizes)
  end
end
