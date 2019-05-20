class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
