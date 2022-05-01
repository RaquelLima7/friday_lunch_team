Rails.application.routes.draw do
  root to: 'employees#index'
  resources :employees
  resources :blind_dates, only: %i[new create index show]
end
