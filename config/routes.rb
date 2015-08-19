Rails.application.routes.draw do
  devise_for :users
  root :to => 'five#main'
  
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
