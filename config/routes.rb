Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "books", to: "books#index"
  get "books/:prime_number", to: "books#prime"

  get "articles", to: "books#index"

  get "lists/books", to: "lists#top_five_books_list"

  get "/search/books_filter", to: "filter#books_filter"
  get "/search/article_filter", to: "filter#article_filter"

end
