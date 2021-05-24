describe Parser::Json do
  let(:json) { "{\"key1\":\"foo\",\"key2\":\"bar\"}" }

  it 'parse json to hash' do
    parser = Parser::Json.new

    expect(parser.parse(json)).to match({:key1=>"foo", :key2=>"bar"})
  end
end
