class BackgroundImageService
  def self.image_full_url(location)
    new.image_full_url(location)
  end

  def image_full_url(location)
    json = get_json(location)
    json[:data][:attributes][:image_full_url]
  end

  private

    def get_json(location)
      response = Faraday.get('https://sweather-be.herokuapp.com/api/v1/backgrounds') do |req|
        req.params['location'] = location
      end

      JSON.parse(response.body, symbolize_names: true)
    end
end
