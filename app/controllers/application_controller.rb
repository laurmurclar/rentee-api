class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include DeviseTokenAuth::Concerns::SetUserByToken

  devise_token_auth_group :user, contains: [:tenant, :landlord]
  
  def root
    render json: { api: "v1" }
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :f_name
      devise_parameter_sanitizer.for(:sign_up) << :l_name
    end
end
