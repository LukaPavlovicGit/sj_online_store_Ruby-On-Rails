class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :rate
      t.string :text
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
