Rails.application.routes.draw do
  get 'contact_form/new'

  get 'contact_form/create'

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
  
  get "/contact" => "contact#index", as: "contact"

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
  

match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]
 
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
