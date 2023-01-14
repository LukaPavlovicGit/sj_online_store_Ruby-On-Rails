class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.date :delivery_date

      t.timestamps
    end
  end
end
