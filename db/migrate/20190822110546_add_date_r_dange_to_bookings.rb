class AddDateRDangeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date_range, :string
  end
end
