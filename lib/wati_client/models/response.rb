module WatiClient
  class Response
    def initialize(data, status_code, headers)
      @data = data
      @status_code = status_code
      @headers = headers
    end

    def data
      @data
    end

    def status_code
      @status_code
    end

    def headers
      @headers
    end
  end
end
