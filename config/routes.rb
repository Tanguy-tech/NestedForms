Rails.application.routes.draw do
  resources :surveys do 
    get 'new_response'
  end
  resources :questions
  resources :answers
  root 'surveys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
