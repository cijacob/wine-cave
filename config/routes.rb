Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'
  get 'colors' => "colors#index"
  get 'year' => 'year#index'
  
end
