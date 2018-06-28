Rails.application.routes.draw do
  get 'users/new'

  root 'homepage#index'
  get 'homepage/index'
  get 'colors' => "colors#index"
  get 'years' => 'years#index'

  resources :wines, :countries
  
  resources :lands do 
    resources :countries
  end 
  resources :colors do 
    resources :wines
  end 
  scope "(:locale)", locale: /en|fr/ do
    resources :years
  end
  get '/:locale' => 'homepage#index'
end
