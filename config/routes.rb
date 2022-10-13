Rails.application.routes.draw do
  # get 'widgets/index'
  resources :widgets, only: [ :show, :index ]
  get "manufacturers/:id", to: "manufacturers#show"
  root 'components#index'
  resources :widget_ratings, only: [ :create ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 
  # Createds a nested route but should be done only if deemed necessary
  # this is because it puts a constraint on how your urls are routed
  # It points out that in order to identify a widget rating, you must need a widget
  # It also points out that a rating has no meaning without a widget
  # resources :widgets, only: [ :show ] do
  #   resources :ratings, only: [ :create ]
  # end

  # Nested routes can also be used for namespacing
  # example:
  # namespace :customer_service do
  #   resources :widgets, only: [ :show, :update, :destroy ]
  # end

  
    

  ####
  # Custom routes start here
  #
  # For each new custom route:
  #
  # * Be sure you have the canonical route declared above
  # * Add the new custom route below the existing ones
  # * Document why it's needed
  # * Explain anything else non-standard
  
  # Used in podcast ads for the 'amazing' campaign
  #get "/amazing", to: redirect("/widgets")
  get "/amazing", to: "widgets#index"
  










end
