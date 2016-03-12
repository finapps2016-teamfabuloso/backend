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
    custom_data = params['custom_data']
    custom_data.delete!("\n") if custom_data.include? "\n"
    parsed_data = custom_data.is_a?(String) ? JSON.parse(custom_data) : custom_data
    returned_data = ActionController::Parameters.new(parsed_data)
    returned_data.require(:movement).permit(:price, :item, :nfc_tag, :account_id, :app_id, :device_id)
  end
end