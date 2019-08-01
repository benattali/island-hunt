class CreateTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.string :category
      t.string :description
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
