Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'quotes#index'
  resources :quotes do
    member do
      get :hovercard
    end
  end
  # get 'quotes/:id/edit', to: 'quotes#edit', as: 'edit_quote'
end
