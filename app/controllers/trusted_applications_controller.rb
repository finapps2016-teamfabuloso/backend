class TrustedApplicationsController < ApplicationController

  # def index
  #   @trusted_apps = TrustedApplication.all
  #   render 'index.json.jbuilder', status: :ok
  # end

  def create
    @trusted_app = TrustedApplication.new(trusted_app_params)
    if @trusted_app.save
      render 'create.json.jbuilder', status: :created
    else
      render json: {errors: @trusted_app.errors.messages }
    end
  end

  # def show
  #   @trusted_app = TrustedApplication.find(params[:id])
  #   render 'show.json.jbuilder', status: :ok
  # end

  private
  def trusted_app_params
    params.require(:trusted_application).permit(:device_id, :app_id)
  end
end