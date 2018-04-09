Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'
  get 'colors' => "colors#index"
  get 'years' => 'years#index'
  get '/:locale' => 'homepage#index'

  scope "(:locale)", locale: /en|fr/ do
    resources :years
  end
  
end
