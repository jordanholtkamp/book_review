class Book
  attr_reader :title
  def initialize(title)
    @title = title
  end

  def author
    book_info = BookService.new(title)
    book_info.get_info[0]['author_name'].first
  end

  def genres
    book_info = BookService.new(title)
    if book_info.get_info[2]
      book_info.get_info[2]['subject']
    else
      ['no genres']
    end
  end

  def reviews
    book_info = BookService.new(title)
    book_info.get_reviews['results']
  end
end