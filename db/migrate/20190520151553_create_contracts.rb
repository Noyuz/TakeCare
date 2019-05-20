class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :nickname
      t.text :description
      t.string :price
      t.string :rank
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
