Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      defaults format: :json do
        resources :projects do
          resources :tasks
        end
      end
    end
  end
end
