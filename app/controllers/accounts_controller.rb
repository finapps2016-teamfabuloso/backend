class AccountsController < ApplicationController

  def index
    @accounts = Account.all
    render 'index.json.jbuilder'
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      render 'create.json.jbuilder'
    else
      render json: { errors: @account.errors.messages }
    end
  end

  private
  def account_params
    params.require(:account).permit(:name, :ccn)
  end
end