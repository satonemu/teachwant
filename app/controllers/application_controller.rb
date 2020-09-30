class ApplicationController < ActionController::Base

	before_action :authenticate_user!
	def after_sign_in_path_for(resource)
		public_users_path
	end
end
