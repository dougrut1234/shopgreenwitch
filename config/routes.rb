Rails.application.routes.draw do
  post "/subscribe_email" => "subscribe_emails#subscribe"


  get "/locations" => "locations#index", as: "locations"

  get "/promotions" => "promotions#index", as: "promotions"

  get "/shop" => "shop#index", as: "shop"
  
  get "/contact" => "contact#index", as: "contact"

  get "/faq" => "faq#index", as: "faq"


  get "/" => "home#index", as: "home"

  get "/hemp_dictionary" => "hemp_dictionary#index", as: "hemp_dictionary"

   get "/recipes" => "recipes#index", as: "recipes"
  


 
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
