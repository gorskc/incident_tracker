Rails.application.routes.draw do
    resources :incidents, only: [:index, :new, :create]
    root to: "home#index"
end
