Rails.application.routes.draw do
  get 'beer/:beer_id', :to => 'beers#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
