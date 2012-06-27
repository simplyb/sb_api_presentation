class Auth::SessionsController < Devise::SessionsController
  #include Devise::Controllers::InternalHelpers

  # POST /resource/sign_in
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    sign_in(resource_name, resource)

    respond_to do |format|

      
      format.json {
        current_user.reset_authentication_token!
        data = {
          :current_user => {:id => current_user.id, :username => current_user.username, :email => current_user.email},
          :auth_token => current_user.authentication_token,
          :success => true
        }

        render :json => data 
      }

      format.html {
        respond_with resource, :location => after_sign_in_path_for(resource)
      }

    end

  end


end
