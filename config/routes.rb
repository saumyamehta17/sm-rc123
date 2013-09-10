SmRc120::Application.routes.draw do
  
  resources :projeccts do
    resources :tasks
  end

  match '' , to: 'projeccts#show', constraints: {subdomain: /.+/}
  root :to => 'projeccts#index'

  
end


