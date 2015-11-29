# Defining helper methods for calls from views/layouts/application.html
module ApplicationHelper
  # For assets names spacing, concatenating controller and action
  def concatenate_controller_action(controller_arg= controller_name, action_arg= action_name)
    controller_arg + '_' + action_arg
  end
end
