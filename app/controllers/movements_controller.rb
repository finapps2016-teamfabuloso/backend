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
    custom_data = params.require(:custom_data).permit!
    custom_data.delete!("\n") if custom_data.include? "\n"
    parsed_data = custom_data.is_a?(String) ? JSON.parse(custom_data) : custom_data
    parsed_data["movement"]
  end
end