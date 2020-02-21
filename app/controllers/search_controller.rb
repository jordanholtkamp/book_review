class SearchController < ApplicationController
  def index
    title = params[:title]

    conn = Faraday.new(url: 'http://openlibrary.org/search.json')
    response = conn.get("?title=#{title}")
    @book_info = JSON.parse(response.body)['docs']
    # @title = book_info[0]['title']
    # @author_array = book_info[0]['author_name']
    # @genre_array = book_info[2]['subject']
  end
end