Rails.application.routes.draw do
 root "sats#index"
 get "/sats/index", to: "sats#index"
 resources :sats
 
 get "/sats/estado/cerrados", to: "sats#cerrados"
 
end
