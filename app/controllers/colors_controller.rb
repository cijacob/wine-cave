class ColorsController < ApplicationController

  def index
    @color = Color.all
  end

end
