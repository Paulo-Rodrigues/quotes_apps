class IntegrationClient
  def initialize(client: Faraday, url: , parser: Parser::Json.new)
    @parser = parser
    @client = client
    @url = url
  end

  def call
    parsed_response(response)
  end

  private

  attr_reader :client, :parser, :url

  def response
    response ||= client.get(url)
  end

  def parsed_response(response)
    parser.parse(response.body)
  end
end
