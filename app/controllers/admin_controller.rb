class AdminController < ApplicationController

	def change_pass
	end

	def admin_params
      params.require(:admin).permit(:login, :password)
    end
end
