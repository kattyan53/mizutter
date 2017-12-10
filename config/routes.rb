Rails.application.routes.draw do
  resources :mizutters do
    collection do
      post :confirm
    end
  end 
end
