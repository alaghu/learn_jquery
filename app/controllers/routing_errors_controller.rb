# Implemented as detailed https://mattbrictson.com/dynamic-rails-error-pages
class RoutingErrorsController < ApplicationController
  def page_not_found
    render(status: 404)
  end

  def internal_server_error
    render(status: 500)
  end
end
