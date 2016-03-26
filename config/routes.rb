Rails.application.routes.draw do
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  scope module: 'api' do
    namespace :v1 do
      resources :users
    end
  end

  scope module: 'api' do
    namespace :v2 do
      resources :users
    end
  end
end
