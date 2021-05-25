describe BrakingBadQuotesRequest do
  let(:response) { BrakingBadQuotesRequest.new(url: 'https://breaking-bad-quotes.herokuapp.com/v1/quotes') }

  it 'return a response object', :vcr do
    expect(response.call.first).to include(:author=>"Jesse Pinkman")
  end
end
