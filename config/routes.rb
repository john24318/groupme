Groupme::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  resources :groups do 
    resources :posts
  end

  root :to => "groups#index"
end
