class MatchController < ApplicationController
  before_action :authenticate_tenant!
  
  # returns the id and address of properties that a tenant (given by id in params) has matched with
  def index
    matches = Property.joins(:matches)
        .where(matches: { tenant_id: params[:tenant_id], matched: true })
        .select(:id, :landlord_id, :street, :town, :county)
    render json: matches
  end

end
