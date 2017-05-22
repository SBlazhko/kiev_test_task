class BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def prime_books
    @prime_books = Book.find_by_sql("SELECT * FROM books WHERE LENGTH(name) > #{params[:prime_number]}")
    render json: @prime_books
  rescue
    render json: {
      data: e,
      status: 500
    }, status: 500
  end
end
