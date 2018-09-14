class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	include DeviseWhitelist
	include SetSource #ez ahoz van hogy ha valahonna. mashonnan logolnak ide
	include CurrentUserConcern #belogolt es guest userek megkulonboztetesere
    include DefaultPageContent #Alap cimeballitas a bongeszo fuleben
	

end
