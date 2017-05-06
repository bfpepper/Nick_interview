Rails.application.routes.draw do

  resources :users, only: [:new, :index, :show]

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
    end
  end

end
