class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Reditect to a default route when user inputs a wrong one
  # rescue_from ActionController::RoutingError do |exception|
  #   flash[:error] = "There is no such route"
  #   redirect_to root_url
  # end

  private

  def after_sign_up_path_for(resource_or_scope)
      new_profile_path
  end

    def after_sign_in_path_for(resource_or_scope)

      
      if Profile.exists?(:user_id => current_user.id)
        profile_path(current_user.profile.id)
      else
      "/profile"
        # new_profile_path
      end

    end
end
