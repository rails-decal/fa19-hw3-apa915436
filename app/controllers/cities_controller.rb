class CitiesController < ApplicationController
  def create
    if not City.all.key?(params[:city].to_sym)
      city = City.new(
        name: params[:city],
        landmark: params[:landmark],
        population: params[:population]
      )
      city.save
    end
    redirect_to :action => 'view'
  end

  def update_city
    city = City.all[params[:city].to_sym]
    city.update(params)
    redirect_to :action => 'view'
  end

end
