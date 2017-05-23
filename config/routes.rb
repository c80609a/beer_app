Rails.application.routes.draw do

  get 'beer/:beer_type' => 'beers#show'

end
