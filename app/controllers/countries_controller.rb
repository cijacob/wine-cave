class CountriesController < ApplicationController

  def index 
    @countries = Country.all 
  end 

  def new 
    @country = Country.create!(country_params) 
    redirect_to country_path(@country)
  end 

  private 

  def country_params
    params.require(:wine).permit(:name, :land_id)
  end 
end
