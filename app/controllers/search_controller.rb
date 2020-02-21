class SearchController < ApplicationController
  def index
    title = params[:title]

    render locals: {
      book: Book.new(title)
    }
  end
end