describe IntegrationClient do
  let(:response) { IntegrationClient.new(url: 'https://friends-quotes-api.herokuapp.com/quotes') }

  it 'return a response object', :vcr do
    expect(response.call.first).to include(:character=>"Ross")
  end
end
