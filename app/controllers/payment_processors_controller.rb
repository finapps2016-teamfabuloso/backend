def PaymentProessorsController < ApplicationController

  def index
    @payment_processors = PaymentProcessor.all
    render 'index.json.jbuilder'
  end
end