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
    @wine.save
  end 

  def destroy 

  end 

  private 

  def wine_params
    params.require(:wine).permit(:name, :description)
  end 
end
