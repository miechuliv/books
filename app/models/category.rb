class Category < ActiveRecord::Base

  has_many :subcategories

  validates :title, presence: true, length: {minimum: 1, message: 'Enter title' }
  validates :description, presence: true, length: {minimum: 5, message: 'Description must have more than 5' }

end
