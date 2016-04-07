class LandlordController < ApplicationController
	before_action :authenticate_tenant!
	
	def show
		@landlord = Landlord.find_by_id params[:id]
		render json: @landlord
	end

end
