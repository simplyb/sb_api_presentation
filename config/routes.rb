ActiveLife::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "auth/sessions" },
                     :path_names => {:sign_in => :sign_in, :sign_out => :sign_out}


  constraints(:format => :json) do
    resources :events, :except => [:new, :edit] do 
      member do
        get :find_nearby_events
      end
    end

    resources :locations, :except => [:new, :edit]
    resources :users, :except => [:new, :edit]
  end
  root :to => "landing#show"
end
