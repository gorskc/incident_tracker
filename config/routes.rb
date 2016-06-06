Rails.application.routes.draw do
    scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
      get 'sign_in', to: 'sessions#new', as: 'sign_in'
      post 'sign_in', to: 'sessions#create'
      get 'sign_out', to: 'sessions#destroy'
      get 'landing', to: 'pages#landing', as: 'landing'

      resources :incidents, only: [:index, :new, :create, :show, :edit, :update] do
          resources :injuries, :corrective_actions, only: [:index, :new, :create, :show, :edit, :update]
      end
      resources :users, only: [:index, :new, :create, :show, :edit, :update]
      resources :translations, only: [:index, :create]
      root to: "home#index"
    end
end
