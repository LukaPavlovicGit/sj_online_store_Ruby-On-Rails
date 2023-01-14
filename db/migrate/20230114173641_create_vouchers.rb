class CreateVouchers < ActiveRecord::Migration[7.0]
  def change
    create_table :vouchers do |t|
      t.integer :user_id
      t.integer :value
      t.string :comment

      t.timestamps
    end
  end
end
