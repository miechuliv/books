class Rating < ActiveRecord::Base
  belongs_to :book

  validates :book_id, presence: true
  validates :value, presence: true
end
