Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events
      resources :presenters
      resources :artists

      resources :users
      mount Knock::Engine => "/knock"

    end
  end
end
