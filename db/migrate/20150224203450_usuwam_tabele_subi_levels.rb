class UsuwamTabeleSubiLevels < ActiveRecord::Migration
  def change
    drop_table :category_levels
    drop_table :subcategories
  end
end
