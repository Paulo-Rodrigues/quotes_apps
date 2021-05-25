describe FriendsQuotesRequest do
  let(:response) { FriendsQuotesRequest.new(url: 'https://friends-quotes-api.herokuapp.com/quotes') }

  it 'returns the friends api response parsed', :vcr do
    expect(response.call.first).to include(:character=>"Ross")
  end
end
