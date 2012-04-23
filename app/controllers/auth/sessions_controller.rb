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
          :current_user => current_user.to_rabl({:root => false, :scope => {:self => true}}),
          :auth_token => current_user.authentication_token,
          :success => true
        }

        render :json => data 
      }

      format.html {
        respond_with resource, :location => after_sign_in_path_for(resource) + params[:hash_bang]
      }

    end

  end


end
