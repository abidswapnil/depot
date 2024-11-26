Rails.application.routes.draw do
  get "sessions/create"
  get "sessions/destroy"

  get "data_not_found", to: "application#data_not_found"
  get "page_not_found", to: "application#page_not_found"

  get "admin" => "admin#index"

  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end

  scope "(:locale)" do
    resources :orders
    resources :line_items
    resources :carts
    # root 'store#index', as: 'store_index', via: :all
  end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get "static_pages/question"
  get "static_pages/news"
  get "static_pages/contact"

  get "static_pages/data_not_found"
  get "static_pages/page_not_found"

  root "store#index", as: "store_index"
  resources :products do
    get :who_bought, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # config/routes.rb
  get "question", to: "static_pages#question"
  get "news", to: "static_pages#news"
  get "contact", to: "static_pages#contact"

  get "test", to: "products#test"

  match "*unmatched", to: "application#route_not_found", via: :all

  # Defines the root path route ("/")
  # root "posts#index"
end
