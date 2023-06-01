class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
   
   

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name])
  end
  
  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
