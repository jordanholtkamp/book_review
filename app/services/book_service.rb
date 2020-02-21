class BookService
  def initialize(title)
    @title = title
  end

  def get_info
    info = conn.get("?title=#{@title}")
    JSON.parse(info.body)['docs']
  end

  def get_reviews
    response = nyt_conn.get("?title=#{@title}&api-key=#{ENV['NY_TIMES_API']}")
    JSON.parse(response.body)
  end

  private
  def conn
    Faraday.new(url: 'http://openlibrary.org/search.json')
  end


  def nyt_conn
    conn = Faraday.new(url: 'https://api.nytimes.com/svc/books/v3/reviews.json')
  end
end