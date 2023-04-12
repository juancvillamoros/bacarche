Rails.application.routes.draw do
  resources :hotels do
    resources :packages
  end

  resources :events do
    resources :packages
  end
end
