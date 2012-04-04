ActiveLife::Application.routes.draw do
  devise_for :users


  constraints(:format => :json) do
    resources :events, :except => [:new, :edit] do 
      member do
        get :find_nearby_events
      end
    end

    resources :locations, :except => [:new, :edit]
  end
  root :to => "landing#show"
end
