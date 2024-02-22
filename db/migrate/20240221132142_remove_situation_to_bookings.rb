class RemoveSituationToBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column(:bookings, :situation)
  end
end
