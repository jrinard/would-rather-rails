Rails.application.routes.draw do



  resources :questions do
      get "/vote" => "questions#vote"
  end
end
