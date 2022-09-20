class ChangeColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :passenger_id, :integer
  end

  def change
    add_column :passengers, :booking_id, :integer
  end

end
