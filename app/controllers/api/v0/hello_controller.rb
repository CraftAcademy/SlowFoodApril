class Api::V0::HelloController < ApplicationController
  include ActionController::RequestForgeryProtection

  def index
    render json: { message: 'Hi' }
  end
end
