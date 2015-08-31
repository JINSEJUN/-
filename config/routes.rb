Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    
  root :to => 'five#oh'
  

  
  match ":controller(/:action(/:id))", :via => [:post, :get]
  
  

end

