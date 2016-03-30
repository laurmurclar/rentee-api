class ApprovalController < ApplicationController

  def create
    @approval = Approval.new(approval_params)

    if @approval.save
      if @approval.approved
        #auto-match
        @match = Match.new(tenant_id: params[:tenant_id], property_id:
                              params[:property_id], matched: true)
        if @match.save # both saved
          render json: {
            status: 'success',
            data:  @approval.as_json
          }
        else # approval saved, but match didn't, so return match errors
          render json: {
            status: 'success',
            data:  @match.errors.to_hash.merge(full_messages: @match.errors.full_messages)
          }
        end
      end
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
