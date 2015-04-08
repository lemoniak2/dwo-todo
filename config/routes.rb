Rails.application.routes.draw do
  root 'items#index'

  resources :items do
    resource :votes, only: %i(create destroy)
  end
end
