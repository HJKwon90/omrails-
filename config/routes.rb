Rails.application.routes.draw do
  devise_for :users
  as :user do
  	get "sign_in" => 'deviser/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registrations#new'
  end	
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
