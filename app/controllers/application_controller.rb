class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render :json => "Not found", :status => :not_found
  end

  private

  def authenticate
    if request.headers['Authorization'].present?
      @facebook_token = request.headers['Authorization']
    else
      render :json => "Unauthorized", status: :unauthorized
    end
  end
end
