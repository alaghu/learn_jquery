require 'rails_helper'

describe ApplicationHelper, type: :helper do
  it 'Concatenate with an underscore' do
    method_call = helper.concatenate_controller_action('Controller', 'Action')
    expect(method_call).to eq('Controller_Action')
  end

  it 'should return icon tags for apple'

  # should contain

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-57x57-%.png" sizes="57x57" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-60x60-%.png" sizes="60x60" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-72x72-%.png" sizes="72x72" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-76x76-%.png" sizes="76x76" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-114x114-%.png" sizes="114x114" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-120x120-%.png" sizes="120x120" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-144x144-%.png" sizes="144x144" />

  # <link rel="apple-touch-icon-precomposed" type="image/x-icon"
  # href="/assets/Favicon/apple-touch-icon-152x152-%.png" sizes="152x152" />
  it 'should return the favicons'

  it 'should return microsoft icons'
end
