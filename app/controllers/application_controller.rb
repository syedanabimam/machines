class ApplicationController < ActionController::API
  include ActionController::Serialization
  # respond_to :json

  def record_not_found
    render status: 404, json: { message: 'No such Record Found' }
  end
end
