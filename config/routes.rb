Rails.application.routes.draw do

  # Root
  root 'home#index'

  # A's notes.
  # 1. This is the bible : http://guides.rubyonrails.org/routing.html
  #
  # 2. General syntax
  # Method name = get - verb of restful
  # Param1 'matches with url
  # Param2 to: takes the arguments'controller_name#action_name'.
  # param3 as: makes it named routes
  #
  # 3. Always - rake routes.


  # Books related routing
  # the base path alone is redirected to selector
  # http://guides.rubyonrails.org/routing.html#redirection
  get 'book', to: redirect('book/selector')

  # When only the path is given the corresponding names book_intro_path, etc
  get 'book/intro'
  get 'book/selector'

  # Select me related routes
  get 'select_me/index'

  # Homes related routes
  resources :home

  # Error condition
  # Implemented as detailed https://mattbrictson.com/dynamic-rails-error-pages
  get '/404', to: 'routing_errors#page_not_found'
  get '/500', to: 'routing_errors#internal_server_error'
end
