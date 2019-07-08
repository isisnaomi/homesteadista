Rails.application.routes.draw do
  namespace :api do
    get 'activists/featured', to: 'activists#featured', as: 'featured'
    get 'categories/:category/activists', to: 'categories#activists', as: 'category_activists'
    resources :activists, only: %i[index show create destroy update], :defaults => {:format => "json"}
    resources :categories, only: %i[index show create destroy update], :defaults => {:format => "json"}
  end
end
