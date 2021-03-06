class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.integer :total_amount

      t.timestamps
    end
  end
end
