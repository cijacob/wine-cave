Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'
  get 'colors' => "colors#index"
  get 'years' => 'years#index'
  get 'wines' => 'wines#index'

  
  resources :colors do 
    resources :wines
  end 
  scope "(:locale)", locale: /en|fr/ do
    resources :years
  end
  get '/:locale' => 'homepage#index'
end
