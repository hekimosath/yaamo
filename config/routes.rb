Rails.application.routes.draw do
  #--------自作ページルーティング

  get "menus/list",to: "menus#list"

  #--------自作ページルーティング終わり
  resources :menus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'



end
