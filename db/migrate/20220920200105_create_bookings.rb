class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passenger_id
      t.integer :ticket_quantity

      t.timestamps
    end
  end
end
