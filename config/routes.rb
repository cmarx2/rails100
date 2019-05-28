Rails.application.routes.draw do
  root 'billboards#index'  
  
  resources :billboards do
    resources :songs
  end
  
  resources :songs do
    resources :artists
  end
end
