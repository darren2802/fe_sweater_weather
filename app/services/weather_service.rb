class WeatherService
  def self.information(location)
    new.information(location)
  end

  def information(location)
    json = get_json(location)
    json[:data][:attributes]
  end

  private

    def get_json(location)
      response = Faraday.get('https://sweather-be.herokuapp.com/api/v1/forecast') do |req|
        req.params['location'] = location
      end

      JSON.parse(response.body, symbolize_names: true)
    end
end
