class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
