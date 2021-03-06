class AppsController < ApplicationController

  def index
    @apps = App.all
    render 'index.json.jbuilder', status: :ok
  end

  def create
    @app = App.new(app_params)
    if @app.save
      render 'create.json.jbuilder', status: :created
    else
      render json: {errors: @app.errors.messages }
    end
  end

  def show
    @app = App.find(params[:id])
    render 'show.json.jbuilder', status: :ok
  end

  private
  def app_params
    params.require(:apps).permit(:name)
  end
end