Rails.application.routes.draw do


  mount RedactorRails::Engine => '/redactor_rails'
  scope "(:locale)", :locale => /en|ru/ do

  namespace :blog do
    resources :sports, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :arts, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :programms, only: [:new, :create, :index, :show, :edit, :update, :destroy]

    # get '/sport_view', to: 'sports#content'
    # get '/art_view', to: 'arts#content'
    # get '/programm_view', to: 'programms#content'
  end
  get '/gallery' => 'blog#gallery'
  
 
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'main#main'

  resources :sessions, only: [:new, :create, :destroy]

  match '/login',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  get '/pass' => 'admin#change_pass' 
  post '/pass' => 'admin#change_pass'
end

 get '/blog' => 'blog#main'

get '/:locale' => 'blog#main'

  # get '/potterrs(.:format)' => 'potterrs#index'
  
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
