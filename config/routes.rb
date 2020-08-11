Rails.application.routes.draw do
  get 'meaasges/index'
  root "messages#index"
end