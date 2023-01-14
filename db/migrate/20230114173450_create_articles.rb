class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.integer :order_id
      t.string :manufacturer
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
