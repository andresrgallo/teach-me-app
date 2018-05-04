class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_up_path_for(resource_or_scope)
      new_profile_path
  end

    def after_sign_in_path_for(resource_or_scope)

      if Profile.exists?(:user_id => current_user.id)
        profile_path(current_user.id)
      else
        new_profile_path
      end

    end
end
