module DeviseWhitelist #a nevnek egyezni kell a file nevvel az undescore bol lesz capital
 extend ActiveSupport::Concern

  included do
 	before_action :configure_permitted_parameters, if: :devise_controller?
	#ez az action. ez a kitalat nev                  ez hogy csak akkor ha a komunikacio a devise controllerrel tortenik.
  end

  def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
       devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end	
end	