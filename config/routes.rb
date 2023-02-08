Rails.application.routes.draw do
  
  resources :dog_houses, only: [:show] do
    #nested resource for reviews
    resources :reviews, only: [:show, :index]
  end
    #Now we have the resourced :dog_houses route, but by adding the do...end we can pass it a block of its nested routes.


  resources :reviews, only: [:show, :index, :create]

end
