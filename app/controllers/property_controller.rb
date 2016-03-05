class PropertyController < ActionController::API
  before_action :authenticate_tenant!
  
  def show
    @property = Property.find_by_id params[:id]
    render json: @property
  end

end
