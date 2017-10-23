class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  class CamaraApi
    include HTTParty
    base_uri 'dadosabertos.camara.leg.br/api/v2'
  
    def initialize(page)
      @options = { query: { page: page } }
    end
  
    def deputados
      self.class.get("/deputados", @options)
    end
  
    def proposicoes
      self.class.get("/proposicoes", @options)
    end
  end
end
