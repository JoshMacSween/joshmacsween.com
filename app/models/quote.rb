# frozen_string_literal: true

class Quote < ApplicationRecord
  require 'rest-client'

  URLNAME = 'https://stoicapi.vardy.codes/api/quotes/random'

  def initialize
    RestClient.get('https://stoicapi.vardy.codes/api/quotes/random')
  end

  def index
    @quote = Quote.all
    render json: {status: "SUCESS", message: "Loaded all quotes", data: quotes}, status: :ok
  end

  def content
    # what do here
  end

  def author
    # what do here
  end
end
