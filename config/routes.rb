Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'
  get 'colors' => "colors#index"
  get 'year' => 'year#index'
  get '/:locale' => 'homepage#index'

  scope "(:locale)", locale: /en|fr/ do
    resources :year
  end
  
end
