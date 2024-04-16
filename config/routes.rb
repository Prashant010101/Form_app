Rails.application.routes.draw do
  root 'form_pages#index'

  resources :form_pages
end
