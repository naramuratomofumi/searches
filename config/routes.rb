Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only:[ :new, :create, :show, :edit, :destroy, :update] do
    resources :likes, only: [:create, :destroy]
  end
end