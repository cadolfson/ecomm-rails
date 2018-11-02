class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :cost
      t.datetime :order_date

      t.timestamps
    end
  end
end
