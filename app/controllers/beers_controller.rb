class BeersController < ApplicationController
  def show
    beers = Beer.where(:beer_type => params[:beer_type])
    if beers.count > 0
      @beer = beers.first
    else
      not_found
    end
  end
end
