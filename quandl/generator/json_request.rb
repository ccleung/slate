require_relative 'request'

module Quandl
  class JsonRequest < Request
    def initialize(data)
      @format = :json
      super(data)
      puts "WARNING: #{path} does not have a valid json formatted response: #{response_body}".yellow unless response_is_json?
    end

    def response_is_json?
      @response_is_json ||= response_body && response_body.json?
    end

    def parse_response
      response_is_json? ? JSON.parse(response_body) : response_body
    end

    def prettify_response
      response_is_json? ? JSON.pretty_generate(response) : response
    end

    def generate_response
      %(```json\n#{response ? prettify_response : ''}\n```)
    end
  end
end
