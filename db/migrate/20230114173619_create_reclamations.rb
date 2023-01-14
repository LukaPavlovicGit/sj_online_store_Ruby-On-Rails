class CreateReclamations < ActiveRecord::Migration[7.0]
  def change
    create_table :reclamations do |t|
      t.string :description
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
