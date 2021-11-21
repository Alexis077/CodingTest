Rails.application.routes.draw do
  root 'home#index'
  resources :addresses, except:[:edit, :new]
end
