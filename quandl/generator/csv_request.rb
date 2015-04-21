require_relative 'request'

module Quandl
  class CsvRequest < Request
    def initialize(data)
      @format = :csv
      super(data)
    end

    def parse_response
      response_body
    end

    def generate_response
      %(```plaintext\n#{response ? response : ''}\n```)
    end
  end
end
