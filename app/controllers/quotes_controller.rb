class QuotesController < ApplicationController
  def show
    response = RestClient.get"https://stoicapi.vardy.codes/api/quotes/random"

    json = JSON.parse response
    @quoteobject = json["quoteobject"]

  end

  def new
  end

end
