class Book < ApplicationRecord

  has_and_belongs_to_many :books, join_table: "single_sorts"

  include Filterable

  scope :available, -> { where(available: true) }
end
