class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :student, foreign_key: { to_table: :users}
      t.references :lesson, foreign_key: true
      t.string :stripe_charge_id

      t.timestamps
    end
  end
end
