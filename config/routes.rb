Rails.application.routes.draw do
  get "top/index" => "top#index"
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
