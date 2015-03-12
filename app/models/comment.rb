class Comment < ActiveRecord::Base
  belongs_to :book

  validates :author, presence: true, length: {minimum: 1, message: 'Enter author' }
  validates :text, presence: true, length: {minimum: 5, message: 'Text must have more than 5' }
  validates :book_id, presence: true, length: {minimum: 1, message: 'You must add comment to book'}
end
