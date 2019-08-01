class AddDashboardToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :dashboard, :string
  end
end
