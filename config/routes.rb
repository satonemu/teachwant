Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  namespace :admin do
    get 'home/top'
  end
  namespace :public do
    get 'home/top'
    get 'home/about'
  end
  root 'public/home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
