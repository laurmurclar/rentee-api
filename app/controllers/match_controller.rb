class MatchController < ActionController::API

  # returns the id and address of properties that a tenant (given by id in params) has matched with
  def index
    matches = Property.joins(:matches)
        .where(matches: { tenant_id: params[:tenant_id], matched: true })
        .select(:id, :street, :town, :county)
    render json: matches
  end

end
