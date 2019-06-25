# frozen_string_literal: true

class Quote < ApplicationRecord
  require 'rest-client'
  require 'json'

  class << self
    def get
      puts RestClient.get('https://stoicapi.vardy.codes/api/quotes/random').body
    end
    def getAuthor
      puts RestClient.get('https://stoicapi.vardy.codes/api/quotes/random').body.author
    end

    def index
      RestClient.get('https://stoicapi.vardy.codes/api/quotes/random')
      @quote = Quote.all
    end
  end
end
