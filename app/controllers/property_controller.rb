class PropertyController < ActionController::API
  before_action :authenticate_tenant!
  
  def show
    @property = Property.find_by_id params[:id]
    render json: @property
  end

  def create
  	respond_with Property.create(
  		landlord_id: params[:landlord_id],
  		street: params[:street],
  		town: params[:town],
  		county: params[:county],
  		rent: params[:rent],
  		n_baths: params[:n_baths],
  		rent_allowance: params[:rent_allowance],
  		ptrb: params[:ptrb]
  	)
  end

end
