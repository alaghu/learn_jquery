Rails.application.routes.draw do
  root 'homes#index'

  # books related routing
  # maps host/book/any_chapter_name to book controller's show method
  # therefore, the show.html view with any_chapter name as params.
  # finally a helper method with book_path is created. This method is also
  # called named routes
  get 'book/:chapter', to: 'book#show', as: 'book'

  get 'book', to: 'book#index'

  # Select me related routes
  # A's notes http verb is the method name which takes the string after host as
  # one one parameter and the controller name and action as the other parameter.
  get 'select_me/index'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions
  # automatically):
  #   resources :products

  resources :homes

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
