Rails.application.routes.draw do
<<<<<<< HEAD
  resources :surveys do 
    get 'new_response'
  end
  resources :questions
  resources :answers
=======
  resources :surveys
>>>>>>> d051cd5c55177b59f89593d11a11d150194a7b20
  root 'surveys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
