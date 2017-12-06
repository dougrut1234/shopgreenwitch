Rails.application.routes.draw do
  get 'promotions/index'

  get 'shop/index'

  get 'contact/index'

  get 'faq/index'

  get 'home/index'

  root 'home#index'
  post 'home/index' => 'home#index'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
