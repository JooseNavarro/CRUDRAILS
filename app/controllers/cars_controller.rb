class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars, status: :ok
  end

  def show
    @car = Car.find(params[:id])
  end


  def create
    @car = Car.new(car_new)

    @car.save
    render json: @car, status: :created
  end


  def destroy
    @car = Car.where(id: params[:id]).first
    @car.destroy
      render json: @car, status: :ok
  end

  private
  def car_new
    params.require(:car).permit(:model, :description, :plate)
  end
end
