class List < ApplicationRecord

  has_and_belongs_to_many :books, join_table: "single_sorts"

end
