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

  it 'should return favicon tags for other browsers' do
    starting_tag = '<link rel="icon" type="image/x-icon"'\
      ' href="/assets/Favicon/favicon-16x16.png" sizes="16x16"'

    sizes = %w(16x16 32x32 96x96 128x128 196x196)

    method_call = helper.browser_favicons

    expect(method_call).to start_with(starting_tag)
    expect(method_call).to include(*sizes)
  end

  it 'should return microsoft icon tags ' do
    starting_tag = '<meta name="application-name" content='

    sizes = %w(70x70 144x144 150x150 310x310)

    method_call = helper.microsoft_icons

    expect(method_call).to start_with(starting_tag)
    expect(method_call).to include(*sizes)
  end
end
