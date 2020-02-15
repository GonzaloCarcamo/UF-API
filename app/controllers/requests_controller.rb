class RequestsController < ApplicationController

  def index
    @requests = Request.all
    render json: @requests

  end

  def show
    @request = Request.find_by(nombre: params[:id])
    @count = Request.where(nombre: params[:id]).count
    if @request
      render json: [@request, {peticiones: @count}]

    else
      render json: { message: 'no existe el usuario'}
  end
end

  def create
    @request = Request.new(request_params)
    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
      #EN ESTE CASO, EL CREATE SE HIZO PARA GENERARLO DESDE LA URL
    end

  end

end
