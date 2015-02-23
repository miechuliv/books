class CreateCategoryLevels < ActiveRecord::Migration
  def change
    create_table :category_levels do |t|
      t.integer :level
      t.references :category, index: true

      t.timestamps
    end
  end
end
