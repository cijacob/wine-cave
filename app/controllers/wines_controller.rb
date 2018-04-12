class WinesController < ApplicationController
  def index
    @wines = Wine.all 
  end

  def new
    @wine = Wine.new
  end 

  def create 
    #render plain: params[:wine].inspect
    @wine = Wine.new(wine_params)
    redirect_to wines_path(@wine) if @wine.save
  end 

  def show
    @wine = Wine.find(params[:id])
  end 

  def destroy 

  end 

  private 

  def wine_params
    params.require(:wine).permit(:name, :description, :domain, :color, :year, :country)
  end 
end
