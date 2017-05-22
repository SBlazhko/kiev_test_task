class FilterController < ApplicationController

  def article_filter
    @filtered_artile = article_collection.filter(params.slice(:filter_article_by_name,
                                                  :filter_article__by_genre,
                                                  :filter_article__by_author))
    render json: @filtered_artile
  rescue => e
    render json: {
      data: e,
      status: 500
    }, status: 500
  end

  def books_filter
    @filtered_books = books_collection.filter(params.slice(:books_collection,
                                                                         :filter_books_by_genre,
                                                                         :filter_books_by_author,
                                                                         :filter_books_by_publisher))
    render json: @filtered_books
  rescue => e
    render json: {
      data: e,
      status: 500
    }, status: 500
  end

  private

  def books_collection
    Book
  end

  def article_collection
    Article
  end

end
