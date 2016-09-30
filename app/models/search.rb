require 'rest-client'

class Search

  def initialize(page, company, location, level, category)
    @options = {"page" => 0, "location" => location}
  end

  def jobs
    response = RestClient.get('https://api-v2.themuse.com/jobs', { params: @options })
    JSON.parse(response)
  end
end
