require_relative 'request'

module Quandl
  class XmlRequest < Request
    def initialize(data)
      @format = :xml
      super(data)
    end

    def parse_response
      response_body
    end

    def generate_response
      %(```xml\n#{response ? response : ''}\n```)
    end
  end
end
