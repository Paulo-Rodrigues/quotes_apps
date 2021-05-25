class FriendsQuotesRequest
  def initialize(url)
    @url = url
    @integration_client = IntegrationClient
  end

  def call
    @integration_client.new(@url).call
  end
end
