module WatiClient
  class Response
    def initialize(data, status_code, headers, error)
      @data = data
      @status_code = status_code
      @headers = headers
      @error = error
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

    def error
      @error
    end
  end
end
