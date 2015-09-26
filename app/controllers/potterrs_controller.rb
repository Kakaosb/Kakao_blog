class PotterrsController < ApplicationController
	 def index
    @potterrs = Potterr.all
  end

	def new
	end

	 def show
    @potterr = Potterr.find(params[:id])
  end

	def create
	@potterr= Potterr.new(potterr_params)
 
  @potterr.save
  redirect_to @potterr
	end

private
  def potterr_params
    params.require(:potterr).permit(:name, :spear)
  end
end
