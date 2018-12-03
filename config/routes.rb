Rails.application.routes.draw do
  resources :materials
  
  resources :properties do
    resources :property_materials, only: :create
  end
  
  resources :assessments
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
