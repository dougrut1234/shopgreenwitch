Rails.application.routes.draw do
  get 'privacy_policy/index'
get 'terms_and_conditions/index'

  get 'ingredients/index'

  get 'testimonials/index'

  get 'process/index'

  get 'philosophy/index'

  post "/subscribe_email" => "subscribe_emails#subscribe"

  get "/locations" => "locations#index", as: "locations"

  get "/promotions" => "promotions#index", as: "promotions"

  get "/shop" => "shop#index", as: "shop"
  
  get "/faq" => "faq#index", as: "faq"

  get "/" => "home#index", as: "home"

  get "/hemp_dictionary" => "hemp_dictionary#index", as: "hemp_dictionary"

   get "/recipes" => "recipes#index", as: "recipes"

   get "/philosophy" => "philosophy#index", as: "philosophy"
  
   get "/process" => "process#index", as: "process"
  
   get "/testimonials" => "testimonials#index", as: "testimonials"
  
   get "/ingredients" => "ingredients#index", as: "ingredients"
  
  get "/terms_and_conditions" => "terms_and_conditions#index", as: "terms_and_conditions"
  
  get "/privacy_policy" => "privacy_policy#index", as: "privacy_policy"

  resources :contacts, only: [:new, :create]
  get "/contact", to: "contacts#new"
   post "/contacts" => "contacts#create"
 
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
