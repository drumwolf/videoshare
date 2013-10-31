Videoshare::Application.routes.draw do
  resources :videos


  authenticated :user do
    root :to => 'videos#index'
    # root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
