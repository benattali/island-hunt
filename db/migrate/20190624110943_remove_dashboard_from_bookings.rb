class RemoveDashboardFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :dashboard, :string
  end
end
