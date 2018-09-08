class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?
	#ez az action. ez a kitalat nev                  ez hogy csak akkor ha a komunikacio a devise controllerrel tortenik.

    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
       devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
