class PropertyController < ActionController::API

  def show
    @property = Property.find_by_id params[:id]
    render json: @property
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      render json: {
        status: 'success',
        data:  @property.as_json
      }
    else
      render json: {
        status: 'error',
        errors: @property.errors.to_hash.merge(full_messages: @property.errors.full_messages)
      }, status: 422
    end
  end

private
  def property_params
    params.permit(:landlord_id, :street, :town, :county, :rent,
                          :n_baths, :rent_allowance, :ptrb, :n_beds, :avail_beds)
  end

end
