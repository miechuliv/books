class BooksCategories < ActiveRecord::Migration
  def self.up
    create_table 'books_categories', :id => false do |t|
      t.column :category_id, :integer
      t.column :book_id, :integer
    end
  end
end
