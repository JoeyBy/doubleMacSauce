Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'lists#index'


  resources :lists do
  end

end
