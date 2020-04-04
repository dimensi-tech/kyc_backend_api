Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :identities do
        collection do
          get :search_identity
          get :find_identity
        end
      end

      resources :passports do
        collection do
          get :search_passport
          get :find_passport
        end
      end
    end
  end
end
