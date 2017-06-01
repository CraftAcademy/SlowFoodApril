class Api::V0::HelloController < ApiController
  include ActionController::RequestForgeryProtection

  def index
    render json: { message: 'Hi' }
  end
end
