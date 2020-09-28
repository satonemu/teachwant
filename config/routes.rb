Rails.application.routes.draw do

  devise_for :admins ,controllers: { sessions: 'public/admins/sessions',  
                                      registrations: 'public/admins/passwords',
                                      passwords: 'public/admins/passwords' }
  devise_for :users ,controllers: {   sessions: 'public/users/sessions',
                                      registrations: 'public/users/registrations', 
                                      passwords: 'public/users/passwords' }

  }
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
