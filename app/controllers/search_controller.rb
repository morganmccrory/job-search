class SearchController < ApplicationController
  def index
    @locations = []
    Location.all.each do |location|
      @locations << "#{location.city}, #{location.state}"
    end
    @levels = Level.all
    @companies = Company.all
    @categories = Category.all

    @search = Search.new(0, params[:company], params[:location], params[:level], params[:category])
    # @total_pages_available = @response["page_count"]
  end
end