Rails.application.routes.draw do
  mount_devise_token_auth_for 'Tenant', at: 't_auth', skip: [:omniauth_callbacks]

  mount_devise_token_auth_for 'Landlord', at: 'l_auth', skip: [:omniauth_callbacks]
  as :landlord do
    # Define routes for Landlord within this block.
  end

  resources :property

  post '/approval', to: 'approval#create'
  
end
