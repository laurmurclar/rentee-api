class PropertyController < ApplicationController
  before_action :authenticate_tenant!, only: [:search]

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

  def search
    join_query = "LEFT JOIN approvals ON properties.id = approvals.property_id"
    property = Property.joins(join_query).where("tenant_id != ? OR tenant_id is ?", params[:t_id], nil)
    property = property.where("town = ? AND county = ? AND rent_allowance = ? AND ptrb = ? AND rent <= ? AND avail_beds >= ? AND n_baths >= ?",
                                   params[:town], params[:county], params[:rent_allowance], params[:ptrb], params[:rent], params[:n_beds], params[:n_baths])
                              .take
    render json: property
  end

private
  def property_params
    params.permit(:landlord_id, :street, :town, :county, :rent,
                          :n_baths, :rent_allowance, :ptrb, :n_beds, :avail_beds)
  end
end
