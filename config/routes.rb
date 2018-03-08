Rails.application.routes.draw do
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
  

  


 
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
