class ApprovalController < ActionController::API

  def create
    @approval = Approval.new(approval_params)

    if @approval.save
      render json: {
        status: 'success',
        data:  @approval.as_json
      }
    else
      render json: {
        status: 'error',
        errors: @approval.errors.to_hash.merge(full_messages: @approval.errors.full_messages)
      }, status: 422
    end
  end

private
  def approval_params
    params.permit(:tenant_id, :property_id, :approved)
  end

end
