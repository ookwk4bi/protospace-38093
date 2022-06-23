class ApplicationController < ActionController::Base
   
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path(resource)
     prototypes_index_path
    end

  
    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nicname,:profile,:occupation,:position])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nicname,:profile,:occupation,:position])

end
end