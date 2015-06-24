class Comment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  
  validates :text, presence: true, length: {minimum: 5, message: 'Text must have more than 5' }
  validates :book_id, presence: true, length: {minimum: 1, message: 'You must add comment to book'}
end
