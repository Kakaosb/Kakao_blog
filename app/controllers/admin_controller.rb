class AdminController < ApplicationController
	before_action :signed_in_user
	
	def change_pass
	end

	def admin_params
      params.require(:admin).permit(:login, :password)
    end
end
