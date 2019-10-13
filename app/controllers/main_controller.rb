require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w
      # Create a new city
		  city = City.new(
        name: params[:city],
        weather: @w,
        population: 0,
        landmark: 'N/A'
		  )
      # Save the city so that it's in City.all
      city.save
    end
  end

end
