class JobsController < ApplicationController
  def index
    @response = HTTParty.get("https://api-v2.themuse.com/jobs?page=0")
    @total_pages_available = @response["page_count"]
  end
end