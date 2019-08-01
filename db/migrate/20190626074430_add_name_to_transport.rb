class AddNameToTransport < ActiveRecord::Migration[5.2]
  def change
    add_column :transports, :name, :string
  end
end
