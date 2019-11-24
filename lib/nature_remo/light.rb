module NatureRemo
  class Light
    def self.on
      signal_id = '91cd00db-8e99-4b80-93c8-df2a4602367b'
      client.post do |req|
        req.url "/1/signals/#{signal_id}/send"
      end
    end

    def self.off
      signal_id = '1de6b0b8-47d8-446a-b224-f572f2215fc9'
      client.post do |req|
        req.url "/1/signals/#{signal_id}/send"
      end
    end

    def self.authorization
      "Bearer #{ENV['NATURE_REMO_CLOUD_API_TOKEN']}"
    end

    def self.client
      @client ||= Faraday.new(
        url: 'https://api.nature.global',
        headers: { authorization: authorization }
      )
    end
  end
end
