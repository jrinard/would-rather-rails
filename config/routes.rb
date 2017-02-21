Rails.application.routes.draw do



  devise_for :users
  resources :questions do
      get "/vote" => "questions#vote"
  end
end
