class DevicesController < ApplicationController

  def index
    @devices = Device.all
    render 'index.json.jbuilder', status: :ok
  end

  def create
    @device = Device.new(device_params)
    @device.save
    render 'create.json.jbuilder', status: :created
  end

  def show
    @device = Device.find(params[:id])
    render 'show.json.jbuilder', status: :ok
  end

  private
  def device_params
    params.require(:device).permit(:category,:serial,:platform)
  end
end