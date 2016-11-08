Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "pages#home"

  get "/fortune", to: "pages#fortune"

  get "/lottery", to: "pages#lottery"

  get "/counter", to: "pages#counter"

  get "/bottles", to: "pages#bottles"

end
