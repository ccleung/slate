require_relative 'md_generator'

module Quandl
  class Request < MdGenerator
    attr_accessor :http_method
    attr_accessor :path
    attr_accessor :response
    attr_accessor :format
    attr_accessor :query_parameters
    attr_accessor :response_body
    attr_accessor :response_headers
    attr_accessor :allowed_headers
    attr_accessor :request_headers

    # data['requests'] is passed in
    def initialize(data)
      @data = data
      @orig_curl = @data['curl']
      @path = @data['request_path']
      @http_method = @data['request_method']
      @all_headers = @data['request_headers']
      @response_body = @data['response_body']
      @response_headers = @data['response_headers']
      @allowed_headers = ['Accept']
      @request_headers = {}
      @allowed_headers.each { |x| @request_headers[x] = @all_headers[x] }
      @response = parse_response if response_body
      super
    end

    def api_token
      @all_headers['X-Api-Token']
    end

    def request_url
      format_url("#{base_url}/#{path}")
    end

    def request_url_with_token
      uri = URI.parse(request_url)
      if api_token
        token_key_value = ["api_key", api_token]
        new_query_ar = uri.query ? URI.decode_www_form(uri.query) << token_key_value : [] << token_key_value
        uri.query = URI.encode_www_form(new_query_ar)
      end
      uri.to_s
    end

    def redirect_file_name
      File.basename(URI.parse(response_headers['Location']).path)
    end

    def redirect_header?
      response_headers && response_headers['Location']
    end

    def generate_request
      doc = []
      doc << 'curl '
      doc << "\"#{request_url_with_token}\" -X #{http_method} "
      request_headers.each do |k, v|
        doc << "\\\n\t-H \"#{k}: #{v}\" "
      end
      if redirect_header?
        doc << "\\\n\t-o #{redirect_file_name} "
        doc << "\\\n\t-L "
      end
      doc.join
    end

    def generate_response
      raise NotImplementedError
    end

    def parse_response
      raise NotImplementedError
    end

    def prefix_div_hack
      "<div class=\"tabs tab-#{format}\" style=\"display:none\"></div>\n"
    end

    def add_prefix_div_hack(doc)
      doc.map { |x| "#{prefix_div_hack}#{x}" }
    end

    def to_markdown
      doc = []
      doc << %(```shell\n#{generate_request}\n```)
      unless redirect_header?
        doc << "> The above command returns #{format.to_s.upcase} structured like this:"
        doc << generate_response
      end
      add_prefix_div_hack(doc).join("\n\n")
    end
  end
end
