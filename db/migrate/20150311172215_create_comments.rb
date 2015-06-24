class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :book, index: true
      t.references :user, index: true
      t.text :text
      t.boolean :status

      t.timestamps
    end
  end
end
