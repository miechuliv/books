class Book < ActiveRecord::Base
  has_and_belongs_to_many :categories

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_many :comments
  has_many :ratings

  validates :name, presence: true, length: {minimum: 1, message: 'Enter name' }
  validates :description, presence: true, length: {minimum: 5, message: 'Description must have more than 5' }
end
