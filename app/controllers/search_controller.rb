class SearchController < ApplicationController
  def index
    @search = Search.new(0, params[:company], params[:location], params[:level], params[:category])
    # @total_pages_available = @response["page_count"]
  end
end