class LandlordController < ApplicationController

	def show
		@landlord = Landlord.find_by_id params[:id]
		render json: @landlord
	end

end
