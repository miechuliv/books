class CategoriesBooks < ActiveRecord::Migration
  def self.up
    create_table 'categories_books', :id => false do |t|
      t.column :category_id, :integer
      t.column :book_id, :integer
    end
  end
end
