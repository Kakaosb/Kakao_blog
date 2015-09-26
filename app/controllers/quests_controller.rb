class QuestsController < ApplicationController
	def new
		@quest = Quest.new
	end

	def get_pwheels_for_select
  potterr_id = params[:potterr_id]
  @pwheels = Pwheel.where(potterr_id: potterr_id)
end

def create
	
end
end
