Rails.application.routes.draw do
  root "users#new"

  resources :sessions,only: [:new , :create, :destroy]
  get "/sessions/:id", to: "sessions#destroy"

  resources :users

  resources :posts ,only: [:new ,:show , :update , :confirm, :edit, :index, :create, :destroy] do
  get "/post/:id", to: "post#destroy"
    collection do
      post :confirm
    end
end

end 
