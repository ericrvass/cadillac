Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions' }

  resources :events

  root 'calendar#main'
  
  get 'data' => 'calendar#data'
  get 'calendar/new' => 'calendar#new'
  post 'calendar/create' => 'calendar#create'
  get 'calendar/new_event' => 'calendar#new_event'
  post 'calendar/create_event' => 'calendar#create_event'
  get 'calendar/edit' => 'calendar#edit'
  post 'calendar/update' => 'calendar#update'
  post 'calendar/remove' => 'calendar#remove'
  get 'plan/new' => 'plan#new'
  post 'plan/create' => 'plan#create'
  get 'plan/edit' => 'plan#edit'
  post 'plan/update' => 'plan#update'
  post 'plan/remove' => 'plan#remove'
  get 'setup' => 'setup#show'
  post 'setup' => 'setup#complete'
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
