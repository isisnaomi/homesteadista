Rails.application.routes.draw do
  namespace :api do
    resources :activists, only: %i[index show create destroy update], :defaults => {:format => "json"}
    resources :categories, only: %i[index show create destroy update], :defaults => {:format => "json"}
  end
end
