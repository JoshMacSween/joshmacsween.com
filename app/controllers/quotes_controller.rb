class QuotesController < ApplicationController

  def create
    @quote = Quote.create(quote_params)

    if quote.invalid?
      flash[:error] = 'Something went wrong'
    end

    redirect_to root_path
  end

  def quote_params
    params.require(:content, :author, :source)
  end

end
