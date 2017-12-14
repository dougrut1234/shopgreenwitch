Rails.application.routes.draw do
  get 'locations/index'

  get 'promotions/index'

  get 'shop/index'

  get 'contact/index'

  get 'faq/index'

  get 'home/index'

  get 'hemp_dictionary/index'

  get 'recipes/index'

  root 'home#index'
  post 'home/index' => 'home#index'

  get "/" => "home#index"
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
