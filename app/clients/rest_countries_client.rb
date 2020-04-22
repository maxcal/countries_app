# HTTP client for the restcountries.eu API
class RestCountriesClient
  include HTTParty

  base_uri 'restcountries.eu/rest/v2'
  format :json # this will automatically parse the response

  def self.region(region)
     get("/region/#{region}")
  end
end
