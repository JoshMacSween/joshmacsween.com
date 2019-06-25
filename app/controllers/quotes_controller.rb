class QuotesController < ApplicationController
  def show
    @quote = Quote.new

  end

  def new
    @quote = Quote.new
  end

end
