class ApplicationController < ActionController::Base
	protect_from_forgery
	layout 'application'

	protected
	
	def require_logged_in
		## TODO: Actually do login stuff
		true
	end

end
