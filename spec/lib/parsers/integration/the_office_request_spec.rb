describe TheOfficeQuotesRequest do
  let(:response) { TheOfficeQuotesRequest.new(url: 'http://www.officeapi.dev/api/quotes') }

  it 'return a response object', :vcr do
    expect(response.call[:data].first).to have_key(:character)
  end
end
