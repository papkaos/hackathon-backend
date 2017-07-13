Rails.application.routes.draw do

  scope :api, module: :api, defaults: { format: :json } do

    resources :topics

    resources :speakers

    resources :hackathons

  end

end
