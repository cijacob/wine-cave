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
    if @wine.save
      redirect_to wines_path(@wine) 
      flash[:notice] = "new wine successfully added to your cart"
    else 
      render 'new'
    end
  end 

  def show
    @wine = Wine.find(params[:id])
  end 

  def destroy 

  end 

  private 

  def wine_params
    params.require(:wine).permit(:name, :description, :domains_attributes[:id, :name], :colors_attributes[:id, :name], :years_attributes[:id, :year], :countries_attributes[:id, :name])
  end 
end
