class WinesController < ApplicationController
  def index
    @wines = Wine.all 
  end

  def new
    @wine = Wine.new
  end 

  def create 
    @wine = Wine.create!(wine_params)
    redirect_to wines_path(@wine) 
  end 

  def show
    @wine = Wine.find(params[:id])
  end 

  def destroy 

  end 

  private 

  def wine_params
    #params.require(:wine).permit(:name, :description, domains_attributes: [:id, :name], colors_attributes: [:id, :name], years_attributes: [:id, :year], countries_attributes: [:id, :name])
    params.require(:wine).permit(:name, :description, :domain_id, :country_id, :year_id, :color_id)
  end 
end
