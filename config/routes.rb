Rails.application.routes.draw do
  root "pins#index"

  resources :pins do
    resources :comments
  end  

  devise_for :users,
            path: '',		
            path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
            controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}		
  
  resources :users, only: [:create, :destroy, :edit, :show] do
    member do
      get 'photo_upload'
    end  
    resources :photos, only: [:create, :destroy]
  end  
    
  resources :conversations, only: [:index, :create]  do		
     resources :messages, only: [:index, :create]
   end
   
  # get '/notification_settings' => 'settings#edit'		
  # post '/notification_settings' => 'settings#update'		
 		
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