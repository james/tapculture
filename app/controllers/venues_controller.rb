class VenuesController < ApplicationController
  def index
    params[:location] = "London" unless params[:location]
    @venues = Venue.find(:all, :origin => params[:location], :within => 10)
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
