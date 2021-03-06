class PropertiesController < ApplicationController

  swagger_controller :properties, "Properties"

  swagger_api :show do
    summary "Fetches all properties"
    param :path, :id, :integer, :required, "Property ID"
    response :unauthorized
    response :not_acceptable
  end

  def show
    render :json => {result:"Success"}, :status => 200
  end

  swagger_api :index do
    summary "Fetches all properties"
    response :unauthorized
    response :not_acceptable
  end

  def index
    render :json => {result:"Success"}, :status => 200
  end
end
