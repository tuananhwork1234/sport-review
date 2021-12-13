class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit :sign_up, keys: [:avatar, :last_name, :first_name, :age, :favortie_sport]
            devise_parameter_sanitizer.permit :account_update, keys: [:avatar, :last_name, :first_name, :age, :favortie_sport]
        end
end
