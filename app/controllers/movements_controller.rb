class MovementsController < ApplicationController

  def create
    @movement = Movement.new(movement_params)
    if @movement.save
      render 'create.json.jbuilder'
    else
      render json: { errors: @movement.errors.messages }
    end
  end

  def index
    @movements = Movement.all
    render 'index.json.jbuilder'
  end

  private
  def movement_params
    params.require(:movement).permit(:price,:item,:nfc_tag,:account_id,:app_id,:device_id)
  end
end