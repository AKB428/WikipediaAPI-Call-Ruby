require 'uri'
require 'json'
require 'httpclient'

# Wikipedia module
class Wikipedia

  # http://ja.wikipedia.org/w/api.php?format=xml&action=query&prop=revisions&titles=%E6%A9%9F%E5%8B%95%E6%88%A6%E5%A3%AB%E3%82%AC%E3%83%B3%E3%83%80%E3%83%A0&rvprop=content
  URL = 'http://ja.wikipedia.org/w/api.php'

  def initialize
  end

  def get(titles)
    query = { 'titles' => titles, 'format' => 'json', 'action' => 'query' , 'prop' => 'revisions', 'rvprop' => 'content'}
    response = HTTPClient.get(URL, query)

    response_json_body = JSON.load(response.body)
    p response_json_body
  end

  private

end