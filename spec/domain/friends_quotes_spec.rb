describe FriendsQuotes do
  let(:friends) { FriendsQuotes.new }

  it 'retrieve all quotes' do
    expect(friends.all_quotes).to eq([])
  end
end
