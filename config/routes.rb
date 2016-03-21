Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'lists#index'


  resources :users do
    resources :lists do 
      resources :todos
    end
  end

end
