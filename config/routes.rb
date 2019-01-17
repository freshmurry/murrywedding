Rails.application.routes.draw do
  root "pins#index"

  resources :pins do
    resources :comments
  end  

  devise_for :users,
            path: '',		
            path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'registration'},
            controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}		
 		
   get '/notifications' => 'notifications#index'

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

end