class ListsController < ApplicationController

  def top_five_books_list
  end
  
  # К сожалению не получилось сделать этот запрос.
  # Мой ход мыслей: как я понял для этого запросса нужно было использовать таблицу single_sorts.
  # Я понял что single_sorts является релейшн таблицей для books and lists через ассоциацию has_and_belongs_to_many.
  # Я связал асоциацию и после этого ушло много попыток на результот который не увенчался успехом наверное,
  # я сильно перемудрил или не понял ТЗ.
end