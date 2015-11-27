# Defining helper methods for calls from views/layouts/application.html
module ApplicationHelper
  # For assets names spacing, concatenating controller and action
  def concatenate_controller_action(controller_arg, action_arg)
    controller_arg + '_' + action_arg
  end
end
