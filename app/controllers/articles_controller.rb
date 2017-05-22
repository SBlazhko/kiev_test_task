class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  rescue => e
    render json: {
      data: e,
      status: 500
    }, status: 500
  end
end
