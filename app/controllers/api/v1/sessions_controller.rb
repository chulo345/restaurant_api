class Api::V1::SessionsController < Devise::SessionsController
  respond_to :json
  skip_before_action :verify_authenticity_token

  private

  def respond_with(resource, _opts = {})
    render json: { message: "Logged in", email: resource.email }, status: :ok
  end

  def respond_to_on_destroy
    render json: { message: "Logged out" }, status: :ok
  end
end
