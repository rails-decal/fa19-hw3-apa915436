Rails.application.routes.draw do
  get 'cities/view/' => 'cities#view'
  get 'cities/view/:city' => 'cities#view'
  get 'cities/new'
  post 'cities/create'
  get 'cities/update/:city' => 'cities#update'
  post 'cities/update' => 'cities#update_city'
  root "main#index"
end
