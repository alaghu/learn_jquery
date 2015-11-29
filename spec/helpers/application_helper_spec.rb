require 'rails_helper'

describe ApplicationHelper, type: :helper do
  it 'Concatenate with an underscore' do
    method_call = helper.concatenate_controller_action('Controller', 'Action')
    expect(method_call).to eq('Controller_Action')
  end
end
