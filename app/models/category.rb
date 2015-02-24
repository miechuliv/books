class Category < ActiveRecord::Base

  has_many :subcategories, class_name: "Category",
           foreign_key: "parent_id"

  belongs_to :parent, class_name: "Category"

  validates :title, presence: true, length: {minimum: 1, message: 'Enter title' }
  validates :description, presence: true, length: {minimum: 5, message: 'Description must have more than 5' }

end
