module ApplicationHelper
  # Concatenating the controller and action to support names spaced assets
  def concatenate_controller_action(controller, action)
    @controller_action = controller + '_' + action
  end

end
