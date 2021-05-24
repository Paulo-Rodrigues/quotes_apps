require 'json'

module Parser
  class Json
    def parse(json)
      JSON.parse(json, symbolize_names: true)
    end
  end
end
