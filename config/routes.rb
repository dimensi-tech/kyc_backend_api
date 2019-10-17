Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :identities do
        collection do
          get :search_identity
        end
      end

      resources :passports do
        collection do
          get :search_passport
        end
      end
    end
  end
end
