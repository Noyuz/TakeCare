class AddNewPhotoToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :photo, :string
  end
end
