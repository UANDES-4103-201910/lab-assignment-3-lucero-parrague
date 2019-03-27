class CreateTicketOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_orders do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
