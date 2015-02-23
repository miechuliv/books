class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :title
      t.string :description
      t.boolean :status
      
      t.references :category, index: true

      t.timestamps
    end
  end
end
