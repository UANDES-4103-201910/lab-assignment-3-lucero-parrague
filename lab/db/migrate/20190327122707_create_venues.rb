class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :nname
      t.string :addres
      t.int :capacity

      t.timestamps
    end
  end
end
