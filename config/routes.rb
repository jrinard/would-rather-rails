Rails.application.routes.draw do

  root to: "questions#index"

  devise_for :users
  resources :questions do
      get "/vote" => "questions#vote"
  end
end
